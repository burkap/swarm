## Installation Instructions - Ubuntu 18.04 with ROS Melodic and Gazebo 9

Install and initialize ROS Melodic desktop full, additional ROS packages, catkin-tools, and wstool:
```
$ sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
$ sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
$ sudo apt update
$ sudo apt install ros-melodic-desktop-full ros-melodic-joy ros-melodic-octomap-ros ros-melodic-mavlink ros-melodic-octomap-mapping
$ sudo apt install python-wstool python-catkin-tools protobuf-compiler libgoogle-glog-dev ros-melodic-control-toolbox
$ sudo rosdep init
$ rosdep update
$ echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
$ source ~/.bashrc
$ sudo apt install python-rosinstall python-rosinstall-generator build-essential
```
Get workspace
```
$ git clone https://github.com/burkap/swarm.git
$ cd swarm
```
Build your workspace with python_catkin_tools (therefore you need python_catkin_tools)
```
$ rosdep install --from-paths src -i
$ sudo apt install ros-melodic-rqt-rotors ros-melodic-rotors-comm ros-melodic-mav-msgs ros-melodic-rotors-control
$ sudo apt install ros-melodic-rotors-gazebo ros-melodic-rotors-evaluation ros-melodic-rotors-joy-interface
$ sudo apt install ros-melodic-rotors-gazebo-plugins ros-melodic-mav-planning-msgs ros-melodic-rotors-description ros-melodic-rotors-hil-interface
$ rosdep update
$ catkin build
```
Add sourcing to your .bashrc file
- Replace [your_path/swarm/devel] with your current working directory
- Ex: `echo "source /home/yourname/swarm/devel/setup.bash" >> ~/.bashrc`
```
$ echo "source [your_path/swarm/devel]/setup.bash" >> ~/.bashrc
$ source ~/.bashrc
```
Update the pre-installed Gazebo version. This fix the issue with the error in REST request for accessing api.ignition.org
```
$ sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
$ wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
$ sudo apt update
$ sudo apt install gazebo9 gazebo9-* ros-melodic-gazebo-*
$ sudo apt upgrade
```
> In the event that the simulation does not start, the problem may be related to Gazebo and missing packages. Therefore, run the following commands. 
```
$ sudo apt-get remove ros-melodic-gazebo* gazebo*
$ sudo sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list'
$ wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
$ sudo apt-get update
$ sudo apt-get install gazebo9 gazebo9-* ros-melodic-gazebo-*
$ sudo apt upgrade
```
## Usage
To launch, run the following command in a terminal
```
$ roslaunch burka_pkg firefly_swarm_hovering_example.launch
```
