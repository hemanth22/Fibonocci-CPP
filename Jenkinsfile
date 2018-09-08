node {
try{
stage ('Downloading git repository'){
git 'https://github.com/hemanth22/Fibonocci-CPP.git'
}
stage ('Build and execute'){
sh 'make'
}
stage ('Complete result file'){
sh './Out > Result.txt'
}
stage ('Cleaning Build file'){
sh 'make clean'
}
stage ('Archive'){
archiveArtifacts '*'
}
notify('Success')
}catch(err){
  notify("Error ${err}")
  currentBuild.result = 'FAILURE'
}
}

def notify(status){
    emailext (
      to: "root@localhost.localdomain",
      subject: "${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'",
      body: """<p>${status}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]':</p>
        <p>Check console output at <a href='${env.BUILD_URL}'>${env.JOB_NAME} [${env.BUILD_NUMBER}]</a></p>""",
    )
}
