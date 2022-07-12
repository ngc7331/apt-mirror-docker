#!/bin/bash
echo `date` - cron: update mirror >/proc/1/fd/1 2>/proc/1/fd/2
/run.sh mirror >/proc/1/fd/1 2>/proc/1/fd/2
