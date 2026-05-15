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