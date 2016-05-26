#!/usr/bin/zsh
# Copyright (C) 2016 Nico Bäurer
# #
# # This program is free software: you can redistribute it and/or modify
# # it under the terms of the GNU General Public License as published by
# # the Free Software Foundation, either version 3 of the License, or
# # (at your option) any later version.
# #
# # This program is distributed in the hope that it will be useful,
# # but WITHOUT ANY WARRANTY; without even the implied warranty of
# # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# # GNU General Public License for more details.
# #
# # You should have received a copy of the GNU General Public License
# # along with this program.  If not, see <http://www.gnu.org/licenses/>.

#tmp=$(zenity --list --text "CPU Profile" --column " " quiet morequiet normal performance endurance | tail -n 1)
#echo -n $tmp > $HOME/i3/tmp/cpufreq
#~/i3/bin/cpufreq profile=$tmp

mode=$($HOME/i3/menu_list.sh \
		quiet \
		morequiet \
		normal \
		performance \
		endurance)

if [[ ! -z $mode ]] ; then
	$HOME/i3/bin/cpufreq "profile=$mode"
fi
