node {

stage "1 cloning the githhub repo"   
git branch: 'main', url: 'https://github.com/naveen-victory/my_learning.git'

stage "2 bulding the docker image"
sh 'sudo docker build -t scripted-image .'

stage "3 pushing to docker hug"
sh 'sudo docker push training_image:latest naveenraj123training/t1_repo:version1'

}
