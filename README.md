## Домашнее задание к занятию 1 «Введение в Ansible»

### Playbook окружения из test.yml

```
TASK [Print fact] 

ok: [localhost] => {
    "msg": 12
}
```

### Playbook окружения из prod.yml

```
TASK [Print fact] 

ok: [rocky9] => {
    "msg": "el"
}
ok: [debian] => {
    "msg": "deb"
}
```
<img width="1528" height="4754" alt="1" src="https://github.com/user-attachments/assets/1f4eae54-9a3a-45e0-b688-00124fd585b0" />
