simple-drush Cookbook
=====================
Simple system wide drush installation from git.


Requirements
------------
#### OS
- linux (thus far tested only on Ubuntu 14.4)

#### cookbooks
- `composer` - a dependency for drush

Attributes
----------
#### simple-drush::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['simple-drush']['drush-path']</tt></td>
    <td>String</td>
    <td>Where drush code will be placed</td>
    <td><tt>/</tt></td>
  </tr>
</table>

Usage
-----
#### simple-drush::default
TODO: Write usage instructions for each cookbook.

e.g.
Just include `simple-drush` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[simple-drush]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: mojzis
