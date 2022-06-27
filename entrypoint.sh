#!/bin/sh -leux

input_file="${1}"
output_file="${2}"
if ! [ "${3+x}" ] ; then
	vars="-D'${3}'"
else
	vars=""
fi

openscad $vars -o $output_file $input_file
