#!/usr/bin/env python3
import json as J
import requests as R

URL = "https://exoplanetarchive.ipac.caltech.edu/TAP/sync?query= select+*+from+TAP_SCHEMA.columns+%20where+table_name+like+ %27TABLE_NAME%27&format=json"

EPATables = [
    "spectra",
    "td",
    "pscomppars",
    "superwasptimeseries",
    "kelttimeseries",
    "di_stars_exep",
    "stellarhosts",
    "transitspec",
    "emissionspec",
    "ps",
    "keplernames",
    "k2names",
    "toi",
    "cumulative",
    "q1_q6_koi",
    "q1_q8_koi",
    "q1_q12_koi",
    "q1_q16_koi",
    "q1_q17_dr24_koi",
    "q1_q17_dr25_koi",
    "q1_q17_dr25_sup_koi",
    "q1_q12_tce",
    "q1_q16_tce",
    "q1_q17_dr24_tce",
    "q1_q17_dr25_tce",
    "ukirttimeseries",
    "ml",
    "object_aliases",
    "k2pandc",
    "k2targets",
    "keplertimeseries",
    "keplerstellar",
    "q1_q12_ks",
    "q1_q16_ks",
    "q1_q17_dr24_ks",
    "q1_q17_dr25_ks",
    "q1_q17_dr25_sup_ks",
]


get_columns(columns):
    output = []
    for c in columns:
        name = c["column_name"]
        description = c["description"]
        dtype = c["datatype"]
        if (name, description, dtype) not in output:
            output.append((name, description, dtype))
    return output

get_table_json(url):
    response = R.get(url)
    return response.json()


run():
    for table in EPATables:
        table_json = get_table_json( URL.replace("TABLE_NAME", table))
        column_names = get_columns(table_json)
        if not len(column_names):
            continue
        print(f"public enum {table}_columns:String, Codable, Identifiable, CaseIterable" + "{")
        for c in column_names:
            desc = c[1]
            if not desc:
                desc = ""
            desc = desc.replace('"', "'") if '"' in desc else desc
            print(f"case {c[0]} // {desc}")
        print("\npublic var id:String {\nreturn self.rawValue\n}\n")
        print("public var description:String {\nswitch self {")
        for c in column_names:
            desc = c[1]
            if not desc:
                desc = ""
            desc = desc.replace('"', "'") if '"' in desc else desc
            print(f'case .{c[0]}: return "{desc}"')
        print("}\n}")
        print("}\n")


get_dtype(dtype):
    if dtype == "int":
        return "Int"
    if dtype == "float":
        return "Float"
    if dtype == "real":
        return "Double"
    if dtype == "bool":
        return "Bool"
    if dtype == "char":
        return "String"
    if dtype == "do":
        return "Double"
    return dtype


def run_structs():
    for table in EPATables:
        table_json = get_table_json( URL.replace("TABLE_NAME", table))
        column_names = get_columns(table_json)
        if not len(column_names):
            continue
        print(f"public struct {table}Response:Codable " + "{")
        for c in column_names:
            print(f"var {c[0]}:{get_dtype(c[2])}?")
        print("}\n")

if __name__ == "__main__":
    run_structs()