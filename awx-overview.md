# Overview

### AWX

AnsibleWorks AWX is a web-based user interface and REST API endpoint for Ansible, the open source IT orchestration engine. Whether sharing operations tasks with your team or integrating with Ansible through the API, AWX provides many powerful tools to make your automation life easier.

### True "Push Button" Automation

Access your favorite projects and re-trigger execution from the web interface with a minimum of clicking. AWX will let you supply input variables, let you pick your credentials, will kick off and monitor the job, and allow you many great views into the results and the history of your hosts over time.

### Role Based Access Control

AnsibleWorks AWX allows you to delegate specific authority to different teams or explicit users. Keep some projects private. Allow some users to edit inventory and others to run playbooks against only certain systems - either in dry run or live mode.

### Cloud & Autoscaling Flexibility

AWX features a powerful callback feature that allows nodes to request configuration on demand.While optional, this is an ideal solution for an auto-scaling scenario, integrating with provisioning servers like Cobbler, or when dealing with cloud nodes with unpredictable uptimes. Requiring no software to be installed on remote nodes, the callback solution can be triggered via a simple call to 'curl' or 'wget', and is easily embeddable in init scripts, kickstarts, or preseeds.

### The Ideal RESTful API

The AWX REST API is the ideal RESTful API for a systems management application, with all resources fully discoverable, paginated, searchable, and well modeled. A styled API browser allows API exploration from the API root (http://servername/api), showing off every resource and relation. Everything that can be done in the user interface can be done in the API - and more.

## Licensing

AWX is a proprietary software product and is licensed on an annual subscription basis. There is no license fee for managing up to 10 hosts. Should you wish to acquire a license for additional servers or get support for the ones you have, please visit <http://www.ansibleworks.com/ansibleworks-awx/> for details, <https://store.ansibleworks.com> to manage licenses, or contact [awx@ansibleworks.com](mailto:awx@ansibleworks.com) for assistance.

Ansible is an open source software project and is licensed under the GNU General Public License version 3, as detailed in the Ansible source code:
<https://github.com/ansible/ansible/blob/devel/COPYING>

This document is Copyright © 2013 AnsibleWorks, Inc. All rights reserved.

## Updates and Support

AWX is licensed as an annual subscription, which includes:
- Standard or Premium (24x7) Support via web, email, and telephone with SLA
- All regular updates and releases of AWX and Ansible

For more information, please contact AnsibleWorks at [awx@ansibleworks.com](mailto:awx@ansibleworks.com) or at <http://www.ansibleworks.com/ansible-subscriptions/>.

## Requirements

AnsibleWorks AWX has the following minimum requirements:

- Supported Operating Systems:
  * Red Hat Enterprise Linux 6
  * CentOS 6
  * Ubuntu 12.04 LTS
- Ansible 1.2.2
- 2 GB RAM
- 20 GB hard disk

While other operating systems may technically function, currently only this list are supported by AnsibleWorks. If you have a firm requirement to run the AWX server on an unsupported operating system, please contact [awx@ansibleworks.com](mailto:awx@ansibleworks.com) for further information.

<blockquote class="note info">
<b>NOTE:</b> For users of Red Hat Enterprise Linux or CentOS systems, SELinux can be set to disabled, permissive, or enforcing, but is only supported in "targeted" mode.
</blockquote>

<blockquote class="note info">
<b>NOTE:</b> Although AWX and Ansible are written in Python, they are full applications and not a simple Python library. Therefore AWX cannot be installed in a Python virtualenv or similar; you must install it as described in the installation instructions below.
</blockquote>

<blockquote class="note info">
<b>NOTE:</b> It is recommended to use Ansible version 1.4 or greater, for improved performance. However, Ansible version 1.2 is supported for AWX 1.4.
</blockquote>

The requirements for systems managed by AWX are the same as for Ansible at:
<http://docs.ansible.com/intro_getting_started.html>

## Release Notes

- Changes from 1.3.1
  * Added new Home tab with dashboard view of job and host status
  * Added user interface for inventory synchronization with Amazon Web Services 
    and Rackspace Cloud Servers. Configure this in the groups editor of the Inventories tab.
  * Moved all credentials to the Credentials tab, including SSH, SCM, and cloud management. You can now create and manage all credentials from the Credentials tab. Previously, credentials were owned by a project, not a particular user. Any existing SCM synchronization jobs will be migrated such that the credentials will be owned by the admin user. If you find you can no longer synchronize SCM-based projects, please review the credentials assigned to the admin user and change their ownership to the appropriate team.
  * SCM integration dialogs are simplified
  * The hosts and groups pages have a more unified the look and feel
  * Various pages have new red and green light icons to indicate status
  * Added the Activity Stream as a beta feature available only to admin users in this release. The activity stream is accessed by an icon in the top right of most screens and shows what actions have been performed and by which users.
- Changes from 1.2.2
  * Added integration with Source Code Management systems for importing and managing AWX project playbooks
  * Added integration with LDAP and Active Directory for AWX user management. Please, see the section [Using LDAP with AWX](#Using-LDAP-with-AWX) for more information.
  * The inventory display has been revised to improve the user experience

## Known Issues

1. AnsibleWorks AWX implements a role based access control system. You may appear to be able to edit objects that do not belong to you (like being able to pull up an edit dialog on your team mates whom you already have permission to view). Don't worry, when you try to edit something, you'll get a 403 error, and you can't see any information you shouldn't already have access to as defined in the system.

2. This version of AWX does not support scheduling jobs from the UI, only triggering them. You may schedule jobs via a cron script via the AWX API, or using the AWX cli found at <https://github.com/ansible/awx-cli>.

## Release History

The release history for this documentation is as follows:

<table>
<tr class="table-header">
 <td>Version</td>
 <td>Date</td>
 <td>Changes</td>
</tr>
<tr>
 <td>1.4.0</td>
 <td>November 21, 2013</td>
 <td>Updated for release of AWX 1.4</td>
</tr>
<tr>
 <td>1.3.0</td>
 <td>September 13, 2013</td>
 <td>Updated for release of AWX 1.3</td>
</tr>
<tr>
 <td>1.2.2</td>
 <td>July 31, 2013</td>
 <td>Initial Release</td>
</tr>
</table>
