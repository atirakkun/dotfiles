#!/bin/env bash

temperature=$(nvidia-smi | grep % | awk {'print $3'})
uso=$(nvidia-smi | grep % | awk {'print $13'})

echo "%{T6}$temperature%{T5}%{O-22}$uso%{T-}"