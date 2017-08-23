VPATH = add:sub          #当前路径搜索不到的文件到add和sub中查找

obj = add.o main.o sub.o  #相当于宏定义

main:$(obj)
	gcc  -o main $(obj)

add.o:add.c add.h 
	gcc -c $< -Iadd  #-I后是需要头文件的路径
sub.o:sub.c sub.h 
	gcc -c $< -Isub
main.o:main.c add.h sub.h 
	gcc -c $< -Iadd -Isub

.PHONY:clean
clean:
	rm $(obj)
	
.PHONY:cleanall
cleanall:
	rm $(obj) main




