# Get Property

![Tests](https://github.com/dschanoeh/get-property/actions/workflows/test.yaml/badge.svg)

This is a GitHub Action to retrieve a single property from a [Java .properties files](https://en.wikipedia.org/wiki/.properties).


## Inputs

### `file` (required)
The path of the properties file to be modified.
If it doesn't exist, the file will be created.

### `property` (required)
The property key to be modified. If the property doesn't exist,
a new entry will be added to the file. Otherwise, it will be
replaced in-line.

## Outputs

### `value`
The property value that was read from the file.

## Usage

```
- name: Get property
  id: get-property
  uses: dschanoeh/get-property@v1
  with:
    file: my.properties
    property: foo
- name: Use value
  run: |
    echo "Value: ${{ steps.get-property.outputs.value }}"
```
