#!/bin/bash
echo "----------------------------------------------------------------------------------------------"
echo "### DEPLOYMENT ###"
kubectl get deploy -o wide
echo "### SERVICE ###"
kubectl get svc -o wide | grep "NodePort"
echo "### REPLICA SETS ###"
kubectl get rs -o wide
echo "### HORIZONTAL POD AUTO-SCALE ###"
kubectl get hpa
echo "### RUNNING PODS ###"
kubectl get pods -o wide | grep "Running"
echo "### PENDDING PODS ###"
kubectl get pods -o wide | grep "Pending"
echo "### CRASH PODS  ###"
kubectl get pods -o wide | grep "CrashLoopBackOff"
echo "### TERMINATING PODS  ###"
kubectl get pods -o wide | grep "Terminating"
echo "### DEPLOYED PODS RESOURCES ###"
kubectl top pods --sum
echo "### NODES ###"
kubectl get nodes -o wide
echo "### NODE RESOURCE ###"
kubectl top node
echo "### ALL POD RESOURCE ###"
kubectl top pods --containers -A --sum
echo "----------------------------------------------------------------------------------------------"
