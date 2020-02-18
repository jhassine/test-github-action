FROM docker/compose:1.25.4

COPY entrypoint.sh /usr/bin/entrypoint.sh

COPY action.md .

ENTRYPOINT [ "/usr/bin/entrypoint.sh" ]

CMD [""]
