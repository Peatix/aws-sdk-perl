#!/usr/bin/env python3

import argparse
import json
import pathlib
import re


def normalize(value: str) -> str:
    return re.sub(r"[^a-z0-9]", "", value.lower())


def main() -> None:
    parser = argparse.ArgumentParser(
        description="Resolve latest botocore service-2.json for a service name."
    )
    parser.add_argument("--service", required=True, help="Paws service name")
    parser.add_argument(
        "--data-root",
        default="botocore/botocore/data",
        help="Path to botocore data root",
    )
    args = parser.parse_args()

    target = normalize(args.service)
    data_root = pathlib.Path(args.data_root)
    candidates = []

    if not data_root.exists():
        print("")
        return

    for service_dir in sorted(data_root.iterdir()):
        if not service_dir.is_dir():
            continue

        versions = sorted(service_dir.glob("*/service-2.json"))
        if not versions:
            continue

        latest = versions[-1]
        try:
            metadata = json.loads(latest.read_text()).get("metadata", {})
        except Exception:
            continue

        names = [
            service_dir.name,
            metadata.get("serviceId", ""),
            metadata.get("serviceFullName", ""),
            metadata.get("serviceAbbreviation", ""),
            metadata.get("endpointPrefix", ""),
            metadata.get("signingName", ""),
        ]
        normalized_names = {normalize(name) for name in names if name}
        if target in normalized_names:
            candidates.append(str(latest))

    print(sorted(candidates, key=len)[0] if candidates else "")


if __name__ == "__main__":
    main()
