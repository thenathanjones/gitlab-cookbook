# gitlab

This is a cookbook for setting up a [Gitlab](http://gitlab.org) server.

## Supported Platforms

Currently the only tested platform is CentOS7 but there is some code supporting Debian/Ubuntu systems that could be expanded on.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['gitlab']['external_url']['protocol']</tt></td>
    <td>String</td>
    <td>What protocol to use in the external URL for links</td>
    <td><tt>http</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['external_url']['host']</tt></td>
    <td>String</td>
    <td>What hostname to use in the external URL for links</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['ldap']['host']</tt></td>
    <td>String</td>
    <td>Hostname of LDAP server to authenticate against</td>
    <td><tt>nil</tt></td>
  </tr>
   <tr>
    <td><tt>['gitlab']['ldap']['port']</tt></td>
    <td>String</td>
    <td>Port used to communicate with LDAP server</td>
    <td><tt>nil</tt></td>
  </tr>
   <tr>
    <td><tt>['gitlab']['ldap']['method']</tt></td>
    <td>String</td>
    <td>Method used to communicate with LDAP server</td>
    <td><tt>nil</tt></td>
  </tr>
   <tr>
    <td><tt>['gitlab']['ldap']['base']</tt></td>
    <td>String</td>
    <td>Search path to look for users in LDAP</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['ldap']['bind_dn']</tt></td>
    <td>String</td>
    <td>DN of user used to bind to LDAP</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['ldap']['bind_pass']</tt></td>
    <td>String</td>
    <td>Password of user used to bind to LDAP</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['ldap']['user_filter']</tt></td>
    <td>String</td>
    <td>Search filter used when querying</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['gitlab']['ldap']['uid']</tt></td>
    <td>String</td>
    <td>Unique identifier used to match user</td>
    <td><tt>sAMAccountName</tt></td>
  </tr>
</table>

## Usage

### gitlab::default
Installs a Gitlab server onto the target.

## License and Authors

Author:: Nathan Jones (thenathanjones@gmail.com)
