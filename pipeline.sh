# docker build --platform linux/x86_64
# svace (анализатор) ->   https://nextcloud.ispras.ru/index.php/s/qw9DCAe43pbR5rk?path=%2FSvace

# лекция ->   https://cloud.msk.fobos-nt.ru/index.php/s/8ade6gFeWmpLXGa?dir=undefined&openfile=202629
# svacer - просмотр результатов анализа (внутри docker-compose)



# git clone --depth=1 --single-branch https://github.com/zeux/pugixml.git
# cd pugixml
# make -j8
# make clean

# ENV JAVA_OPTS = 'jdk.lang.Process.launchMechanism=vfork'

# /svace/svace-3.3.2-x64-linux/bin/svace init
# /svace/svace-3.3.2-x64-linux/bin/svace build make -j20
# /svace/svace-3.3.2-x64-linux/bin/svace analyze
# /svace/svace-3.3.2-x64-linux/bin/svace server single-start