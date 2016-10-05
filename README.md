simple-chef drush Cookbook
=====================
A Chef cookbook for simple drush installation (system wide all projects, all users) from packaged drush,
 according to the [documentation](http://docs.drush.org/en/master/install/).

Requirements
------------
#### OS
- linux (tested only on Ubuntu 14.4, 15)


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
    <td><tt>['simple-drush']['source-path']</tt></td>
    <td>String</td>
    <td>Where drush will be placed</td>
    <td><tt>/</tt></td>
  </tr>
  <tr>
    <td><tt>['simple-drush']['release']</tt></td>
    <td>String</td>
    <td>Where drush code will be placed</td>
    <td><tt>/</tt></td>
  </tr>
</table>

Usage
-----
#### simple-drush::default
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

ToDo
---
- system wide settings according to examples in drush dir
- add a site-alias resource


License and Authors
-------------------
Authors: mojzis
