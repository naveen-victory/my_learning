# my_learning
my_learning
---
- hosts: localhost
  tasks:
  - name: Creating an empty file
    file:
      path: "/tmp/ansible_text.txt"
      state: touch
