µ
ôÉ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018¥®
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_3/kernel/v

)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_7/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_7/beta/v

5Adam/batch_normalization_7/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_7/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_7/gamma/v

6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/v*
_output_shapes	
:*
dtype0

Adam/conv2d_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/v
z
(Adam/conv2d_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/v

*Adam/conv2d_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/v*(
_output_shapes
:*
dtype0

!Adam/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/v

5Adam/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/v

6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/v*
_output_shapes	
:*
dtype0

Adam/conv2d_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/v
z
(Adam/conv2d_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/v*
_output_shapes	
:*
dtype0

Adam/conv2d_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_4/kernel/v

*Adam/conv2d_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/v*'
_output_shapes
:@*
dtype0

!Adam/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_5/beta/v

5Adam/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_5/gamma/v

6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/v*
_output_shapes
:@*
dtype0

Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/v
y
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes
:@*
dtype0

Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_3/kernel/v

*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*&
_output_shapes
:@*
dtype0

!Adam/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/v

5Adam/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/v

6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/v*
_output_shapes
:*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0

Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_3/kernel/m

)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m* 
_output_shapes
:
*
dtype0

!Adam/batch_normalization_7/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_7/beta/m

5Adam/batch_normalization_7/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_7/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_7/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_7/gamma/m

6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_7/gamma/m*
_output_shapes	
:*
dtype0

Adam/conv2d_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_5/bias/m
z
(Adam/conv2d_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_5/kernel/m

*Adam/conv2d_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_5/kernel/m*(
_output_shapes
:*
dtype0

!Adam/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_6/beta/m

5Adam/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_6/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_6/gamma/m

6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_6/gamma/m*
_output_shapes	
:*
dtype0

Adam/conv2d_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_4/bias/m
z
(Adam/conv2d_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/bias/m*
_output_shapes	
:*
dtype0

Adam/conv2d_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_4/kernel/m

*Adam/conv2d_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_4/kernel/m*'
_output_shapes
:@*
dtype0

!Adam/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/batch_normalization_5/beta/m

5Adam/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_5/beta/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_5/gamma/m

6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_5/gamma/m*
_output_shapes
:@*
dtype0

Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv2d_3/bias/m
y
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes
:@*
dtype0

Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*'
shared_nameAdam/conv2d_3/kernel/m

*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*&
_output_shapes
:@*
dtype0

!Adam/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_4/beta/m

5Adam/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_4/beta/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_4/gamma/m

6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_4/gamma/m*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
*
dtype0

#batch_normalization_7/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_7/renorm_stddev

7batch_normalization_7/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_7/renorm_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_7/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/renorm_mean

5batch_normalization_7/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_7/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_7/moving_stddev

7batch_normalization_7/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_7/moving_stddev*
_output_shapes	
:*
dtype0
£
%batch_normalization_7/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_7/moving_variance

9batch_normalization_7/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_7/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_7/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_7/moving_mean

5batch_normalization_7/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_7/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_7/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_7/beta

.batch_normalization_7/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_7/beta*
_output_shapes	
:*
dtype0

batch_normalization_7/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_7/gamma

/batch_normalization_7/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_7/gamma*
_output_shapes	
:*
dtype0
s
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_5/bias
l
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes	
:*
dtype0

conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_5/kernel
}
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*(
_output_shapes
:*
dtype0

#batch_normalization_6/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_6/renorm_stddev

7batch_normalization_6/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_6/renorm_stddev*
_output_shapes	
:*
dtype0

!batch_normalization_6/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/renorm_mean

5batch_normalization_6/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/renorm_mean*
_output_shapes	
:*
dtype0

#batch_normalization_6/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_6/moving_stddev

7batch_normalization_6/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_6/moving_stddev*
_output_shapes	
:*
dtype0
£
%batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_6/moving_variance

9batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_6/moving_variance*
_output_shapes	
:*
dtype0

!batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_6/moving_mean

5batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_6/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_6/beta

.batch_normalization_6/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_6/beta*
_output_shapes	
:*
dtype0

batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_6/gamma

/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_6/gamma*
_output_shapes	
:*
dtype0
s
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_4/bias
l
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes	
:*
dtype0

conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_4/kernel
|
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*'
_output_shapes
:@*
dtype0

#batch_normalization_5/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_5/renorm_stddev

7batch_normalization_5/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_5/renorm_stddev*
_output_shapes
:@*
dtype0

!batch_normalization_5/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_5/renorm_mean

5batch_normalization_5/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/renorm_mean*
_output_shapes
:@*
dtype0

#batch_normalization_5/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#batch_normalization_5/moving_stddev

7batch_normalization_5/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_5/moving_stddev*
_output_shapes
:@*
dtype0
¢
%batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*6
shared_name'%batch_normalization_5/moving_variance

9batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_5/moving_variance*
_output_shapes
:@*
dtype0

!batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!batch_normalization_5/moving_mean

5batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_5/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namebatch_normalization_5/beta

.batch_normalization_5/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_5/beta*
_output_shapes
:@*
dtype0

batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_5/gamma

/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_5/gamma*
_output_shapes
:@*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
:@*
dtype0

conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@* 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
:@*
dtype0

#batch_normalization_4/renorm_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_4/renorm_stddev

7batch_normalization_4/renorm_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_4/renorm_stddev*
_output_shapes
:*
dtype0

!batch_normalization_4/renorm_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/renorm_mean

5batch_normalization_4/renorm_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/renorm_mean*
_output_shapes
:*
dtype0

#batch_normalization_4/moving_stddevVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization_4/moving_stddev

7batch_normalization_4/moving_stddev/Read/ReadVariableOpReadVariableOp#batch_normalization_4/moving_stddev*
_output_shapes
:*
dtype0
¢
%batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_4/moving_variance

9batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0

!batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_4/moving_mean

5batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_4/beta

.batch_normalization_4/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_4/beta*
_output_shapes
:*
dtype0

batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_4/gamma

/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_4/gamma*
_output_shapes
:*
dtype0

NoOpNoOp
ò¡
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¬¡
value¡¡B¡ B¡
â
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
¡
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
renorm_clipping
axis
	gamma
 beta
!moving_mean
"moving_variance
#moving_stddev
$renorm_mean
%renorm_stddev*
È
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op*

/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses* 
¡
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;renorm_clipping
<axis
	=gamma
>beta
?moving_mean
@moving_variance
Amoving_stddev
Brenorm_mean
Crenorm_stddev*
È
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias
 L_jit_compiled_convolution_op*

M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses* 
¡
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yrenorm_clipping
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_moving_stddev
`renorm_mean
arenorm_stddev*
È
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op*

k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses* 
¡
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wrenorm_clipping
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}moving_stddev
~renorm_mean
renorm_stddev*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
®
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
®
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
®
0
 1
!2
"3
#4
$5
%6
,7
-8
=9
>10
?11
@12
A13
B14
C15
J16
K17
[18
\19
]20
^21
_22
`23
a24
h25
i26
y27
z28
{29
|30
}31
~32
33
34
35
36
37*

0
 1
,2
-3
=4
>5
J6
K7
[8
\9
h10
i11
y12
z13
14
15
16
17*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
 trace_1
¡trace_2
¢trace_3* 
* 
¹
	£iter
¤beta_1
¥beta_2

¦decay
§learning_ratem m,m-m=m>mJmKm[m\m hm¡im¢ym£zm¤	m¥	m¦	m§	m¨v© vª,v«-v¬=v­>v®Jv¯Kv°[v±\v²hv³iv´yvµzv¶	v·	v¸	v¹	vº*

¨serving_default* 
5
0
 1
!2
"3
#4
$5
%6*

0
 1*
* 

©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

®trace_0
¯trace_1* 

°trace_0
±trace_1* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_4/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_4/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_4/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_4/moving_stddev=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_4/renorm_mean;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_4/renorm_stddev=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE*

,0
-1*

,0
-1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*

·trace_0* 

¸trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses* 

¾trace_0* 

¿trace_0* 
5
=0
>1
?2
@3
A4
B5
C6*

=0
>1*
* 

Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*

Åtrace_0
Ætrace_1* 

Çtrace_0
Ètrace_1* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_5/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_5/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_5/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_5/moving_stddev=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_5/renorm_mean;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_5/renorm_stddev=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

J0
K1*
* 

Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

Îtrace_0* 

Ïtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

Õtrace_0* 

Ötrace_0* 
5
[0
\1
]2
^3
_4
`5
a6*

[0
\1*
* 

×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

Ütrace_0
Ýtrace_1* 

Þtrace_0
ßtrace_1* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_6/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_6/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_6/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_6/moving_stddev=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_6/renorm_mean;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_6/renorm_stddev=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

h0
i1*
* 

ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

åtrace_0* 

ætrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses* 

ìtrace_0* 

ítrace_0* 
5
y0
z1
{2
|3
}4
~5
6*

y0
z1*
* 

înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

ótrace_0
ôtrace_1* 

õtrace_0
ötrace_1* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_7/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_7/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_7/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_7/moving_stddev=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_7/renorm_mean;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE#batch_normalization_7/renorm_stddev=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ütrace_0* 

ýtrace_0* 

0
1*

0
1*
* 

þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1
#2
$3
%4
?5
@6
A7
B8
C9
]10
^11
_12
`13
a14
{15
|16
}17
~18
19*
b
0
1
2
3
4
5
6
7
	8

9
10
11
12*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
!0
"1
#2
$3
%4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
'
?0
@1
A2
B3
C4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
'
]0
^1
_2
`3
a4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
'
{0
|1
}2
~3
4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
M
	variables
	keras_api

total

count

_fn_kwargs*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_4/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_4/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_6/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_7/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_4/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_4/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_5/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_5/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_4/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_4/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_6/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_6/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/conv2d_5/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_5/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_7/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_7/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_3/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_3/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_2Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_2%batch_normalization_4/moving_variancebatch_normalization_4/gamma!batch_normalization_4/moving_meanbatch_normalization_4/betaconv2d_3/kernelconv2d_3/bias%batch_normalization_5/moving_variancebatch_normalization_5/gamma!batch_normalization_5/moving_meanbatch_normalization_5/betaconv2d_4/kernelconv2d_4/bias%batch_normalization_6/moving_variancebatch_normalization_6/gamma!batch_normalization_6/moving_meanbatch_normalization_6/betaconv2d_5/kernelconv2d_5/bias%batch_normalization_7/moving_variancebatch_normalization_7/gamma!batch_normalization_7/moving_meanbatch_normalization_7/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_72413
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¦!
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_4/gamma/Read/ReadVariableOp.batch_normalization_4/beta/Read/ReadVariableOp5batch_normalization_4/moving_mean/Read/ReadVariableOp9batch_normalization_4/moving_variance/Read/ReadVariableOp7batch_normalization_4/moving_stddev/Read/ReadVariableOp5batch_normalization_4/renorm_mean/Read/ReadVariableOp7batch_normalization_4/renorm_stddev/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp/batch_normalization_5/gamma/Read/ReadVariableOp.batch_normalization_5/beta/Read/ReadVariableOp5batch_normalization_5/moving_mean/Read/ReadVariableOp9batch_normalization_5/moving_variance/Read/ReadVariableOp7batch_normalization_5/moving_stddev/Read/ReadVariableOp5batch_normalization_5/renorm_mean/Read/ReadVariableOp7batch_normalization_5/renorm_stddev/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp/batch_normalization_6/gamma/Read/ReadVariableOp.batch_normalization_6/beta/Read/ReadVariableOp5batch_normalization_6/moving_mean/Read/ReadVariableOp9batch_normalization_6/moving_variance/Read/ReadVariableOp7batch_normalization_6/moving_stddev/Read/ReadVariableOp5batch_normalization_6/renorm_mean/Read/ReadVariableOp7batch_normalization_6/renorm_stddev/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp/batch_normalization_7/gamma/Read/ReadVariableOp.batch_normalization_7/beta/Read/ReadVariableOp5batch_normalization_7/moving_mean/Read/ReadVariableOp9batch_normalization_7/moving_variance/Read/ReadVariableOp7batch_normalization_7/moving_stddev/Read/ReadVariableOp5batch_normalization_7/renorm_mean/Read/ReadVariableOp7batch_normalization_7/renorm_stddev/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_4/beta/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_5/beta/m/Read/ReadVariableOp*Adam/conv2d_4/kernel/m/Read/ReadVariableOp(Adam/conv2d_4/bias/m/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_6/beta/m/Read/ReadVariableOp*Adam/conv2d_5/kernel/m/Read/ReadVariableOp(Adam/conv2d_5/bias/m/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_7/beta/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp6Adam/batch_normalization_4/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_4/beta/v/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp6Adam/batch_normalization_5/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_5/beta/v/Read/ReadVariableOp*Adam/conv2d_4/kernel/v/Read/ReadVariableOp(Adam/conv2d_4/bias/v/Read/ReadVariableOp6Adam/batch_normalization_6/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_6/beta/v/Read/ReadVariableOp*Adam/conv2d_5/kernel/v/Read/ReadVariableOp(Adam/conv2d_5/bias/v/Read/ReadVariableOp6Adam/batch_normalization_7/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_7/beta/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOpConst*`
TinY
W2U	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_73924
¥
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_4/gammabatch_normalization_4/beta!batch_normalization_4/moving_mean%batch_normalization_4/moving_variance#batch_normalization_4/moving_stddev!batch_normalization_4/renorm_mean#batch_normalization_4/renorm_stddevconv2d_3/kernelconv2d_3/biasbatch_normalization_5/gammabatch_normalization_5/beta!batch_normalization_5/moving_mean%batch_normalization_5/moving_variance#batch_normalization_5/moving_stddev!batch_normalization_5/renorm_mean#batch_normalization_5/renorm_stddevconv2d_4/kernelconv2d_4/biasbatch_normalization_6/gammabatch_normalization_6/beta!batch_normalization_6/moving_mean%batch_normalization_6/moving_variance#batch_normalization_6/moving_stddev!batch_normalization_6/renorm_mean#batch_normalization_6/renorm_stddevconv2d_5/kernelconv2d_5/biasbatch_normalization_7/gammabatch_normalization_7/beta!batch_normalization_7/moving_mean%batch_normalization_7/moving_variance#batch_normalization_7/moving_stddev!batch_normalization_7/renorm_mean#batch_normalization_7/renorm_stddevdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount"Adam/batch_normalization_4/gamma/m!Adam/batch_normalization_4/beta/mAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/m"Adam/batch_normalization_5/gamma/m!Adam/batch_normalization_5/beta/mAdam/conv2d_4/kernel/mAdam/conv2d_4/bias/m"Adam/batch_normalization_6/gamma/m!Adam/batch_normalization_6/beta/mAdam/conv2d_5/kernel/mAdam/conv2d_5/bias/m"Adam/batch_normalization_7/gamma/m!Adam/batch_normalization_7/beta/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/m"Adam/batch_normalization_4/gamma/v!Adam/batch_normalization_4/beta/vAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/v"Adam/batch_normalization_5/gamma/v!Adam/batch_normalization_5/beta/vAdam/conv2d_4/kernel/vAdam/conv2d_4/bias/v"Adam/batch_normalization_6/gamma/v!Adam/batch_normalization_6/beta/vAdam/conv2d_5/kernel/vAdam/conv2d_5/bias/v"Adam/batch_normalization_7/gamma/v!Adam/batch_normalization_7/beta/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/v*_
TinX
V2T*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_74183×
Ä

'__inference_dense_2_layer_call_fn_73621

inputs
unknown:

	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_71739o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð

(__inference_conv2d_3_layer_call_fn_73133

inputs!
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



5__inference_batch_normalization_5_layer_call_fn_73186

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
	unknown_3:@
	unknown_4:@
	unknown_5:@
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71320
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ü
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



5__inference_batch_normalization_4_layer_call_fn_73027

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall»
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71177
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Q
Å
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71606

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:¢
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:^
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: s
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0d
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:O
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:k
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0f
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:P
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:j
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:\

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:O

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<w
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0}
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0Q

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<}
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0u

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:~

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:K
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:M
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:k
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0_
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:m
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0c
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0]
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:[
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0x
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0h
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:O
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:=
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:X
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Z
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
 
(__inference_conv2d_5_layer_call_fn_73451

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿAA: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
 
_user_specified_nameinputs
Ê
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_73612

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Q
Å
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73601

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:¢
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:^
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: s
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0d
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:O
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:k
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0f
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:P
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:j
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:\

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:O

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<w
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0}
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0Q

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<}
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0u

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:~

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:K
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:M
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:k
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0_
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:m
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0c
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0]
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:[
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0x
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0h
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:O
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:=
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:X
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Z
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


ó
B__inference_dense_3_layer_call_and_return_conditional_losses_73652

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_3_layer_call_fn_73149

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦
µ.
G__inference_sequential_1_layer_call_and_return_conditional_losses_72995

inputsC
5batch_normalization_4_maximum_readvariableop_resource:?
1batch_normalization_4_sub_readvariableop_resource:?
1batch_normalization_4_mul_readvariableop_resource:A
3batch_normalization_4_add_1_readvariableop_resource:M
?batch_normalization_4_assignmovingavg_2_readvariableop_resource:M
?batch_normalization_4_assignmovingavg_3_readvariableop_resource:;
-batch_normalization_4_assignnewvalue_resource:A
'conv2d_3_conv2d_readvariableop_resource:@6
(conv2d_3_biasadd_readvariableop_resource:@C
5batch_normalization_5_maximum_readvariableop_resource:@?
1batch_normalization_5_sub_readvariableop_resource:@?
1batch_normalization_5_mul_readvariableop_resource:@A
3batch_normalization_5_add_1_readvariableop_resource:@M
?batch_normalization_5_assignmovingavg_2_readvariableop_resource:@M
?batch_normalization_5_assignmovingavg_3_readvariableop_resource:@;
-batch_normalization_5_assignnewvalue_resource:@B
'conv2d_4_conv2d_readvariableop_resource:@7
(conv2d_4_biasadd_readvariableop_resource:	D
5batch_normalization_6_maximum_readvariableop_resource:	@
1batch_normalization_6_sub_readvariableop_resource:	@
1batch_normalization_6_mul_readvariableop_resource:	B
3batch_normalization_6_add_1_readvariableop_resource:	N
?batch_normalization_6_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_6_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_6_assignnewvalue_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	D
5batch_normalization_7_maximum_readvariableop_resource:	@
1batch_normalization_7_sub_readvariableop_resource:	@
1batch_normalization_7_mul_readvariableop_resource:	B
3batch_normalization_7_add_1_readvariableop_resource:	N
?batch_normalization_7_assignmovingavg_2_readvariableop_resource:	N
?batch_normalization_7_assignmovingavg_3_readvariableop_resource:	<
-batch_normalization_7_assignnewvalue_resource:	:
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identity¢%batch_normalization_4/AssignMovingAvg¢4batch_normalization_4/AssignMovingAvg/ReadVariableOp¢'batch_normalization_4/AssignMovingAvg_1¢6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_4/AssignMovingAvg_2¢6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_4/AssignMovingAvg_3¢6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_4/AssignNewValue¢,batch_normalization_4/Maximum/ReadVariableOp¢$batch_normalization_4/ReadVariableOp¢*batch_normalization_4/add_1/ReadVariableOp¢(batch_normalization_4/mul/ReadVariableOp¢*batch_normalization_4/mul_1/ReadVariableOp¢*batch_normalization_4/mul_2/ReadVariableOp¢(batch_normalization_4/sub/ReadVariableOp¢%batch_normalization_5/AssignMovingAvg¢4batch_normalization_5/AssignMovingAvg/ReadVariableOp¢'batch_normalization_5/AssignMovingAvg_1¢6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_5/AssignMovingAvg_2¢6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_5/AssignMovingAvg_3¢6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_5/AssignNewValue¢,batch_normalization_5/Maximum/ReadVariableOp¢$batch_normalization_5/ReadVariableOp¢*batch_normalization_5/add_1/ReadVariableOp¢(batch_normalization_5/mul/ReadVariableOp¢*batch_normalization_5/mul_1/ReadVariableOp¢*batch_normalization_5/mul_2/ReadVariableOp¢(batch_normalization_5/sub/ReadVariableOp¢%batch_normalization_6/AssignMovingAvg¢4batch_normalization_6/AssignMovingAvg/ReadVariableOp¢'batch_normalization_6/AssignMovingAvg_1¢6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_6/AssignMovingAvg_2¢6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_6/AssignMovingAvg_3¢6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_6/AssignNewValue¢,batch_normalization_6/Maximum/ReadVariableOp¢$batch_normalization_6/ReadVariableOp¢*batch_normalization_6/add_1/ReadVariableOp¢(batch_normalization_6/mul/ReadVariableOp¢*batch_normalization_6/mul_1/ReadVariableOp¢*batch_normalization_6/mul_2/ReadVariableOp¢(batch_normalization_6/sub/ReadVariableOp¢%batch_normalization_7/AssignMovingAvg¢4batch_normalization_7/AssignMovingAvg/ReadVariableOp¢'batch_normalization_7/AssignMovingAvg_1¢6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp¢'batch_normalization_7/AssignMovingAvg_2¢6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp¢'batch_normalization_7/AssignMovingAvg_3¢6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp¢$batch_normalization_7/AssignNewValue¢,batch_normalization_7/Maximum/ReadVariableOp¢$batch_normalization_7/ReadVariableOp¢*batch_normalization_7/add_1/ReadVariableOp¢(batch_normalization_7/mul/ReadVariableOp¢*batch_normalization_7/mul_1/ReadVariableOp¢*batch_normalization_7/mul_2/ReadVariableOp¢(batch_normalization_7/sub/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
4batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ³
"batch_normalization_4/moments/meanMeaninputs=batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(
*batch_normalization_4/moments/StopGradientStopGradient+batch_normalization_4/moments/mean:output:0*
T0*&
_output_shapes
:½
/batch_normalization_4/moments/SquaredDifferenceSquaredDifferenceinputs3batch_normalization_4/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          è
&batch_normalization_4/moments/varianceMean3batch_normalization_4/moments/SquaredDifference:z:0Abatch_normalization_4/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(
%batch_normalization_4/moments/SqueezeSqueeze+batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¡
'batch_normalization_4/moments/Squeeze_1Squeeze/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 `
batch_normalization_4/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_4/addAddV20batch_normalization_4/moments/Squeeze_1:output:0$batch_normalization_4/add/y:output:0*
T0*
_output_shapes
:f
batch_normalization_4/SqrtSqrtbatch_normalization_4/add:z:0*
T0*
_output_shapes
:c
batch_normalization_4/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:n
batch_normalization_4/Sqrt_1Sqrt'batch_normalization_4/Sqrt_1/x:output:0*
T0*
_output_shapes
: 
,batch_normalization_4/Maximum/ReadVariableOpReadVariableOp5batch_normalization_4_maximum_readvariableop_resource*
_output_shapes
:*
dtype0¥
batch_normalization_4/MaximumMaximum4batch_normalization_4/Maximum/ReadVariableOp:value:0 batch_normalization_4/Sqrt_1:y:0*
T0*
_output_shapes
:
batch_normalization_4/truedivRealDivbatch_normalization_4/Sqrt:y:0!batch_normalization_4/Maximum:z:0*
T0*
_output_shapes
:
(batch_normalization_4/sub/ReadVariableOpReadVariableOp1batch_normalization_4_sub_readvariableop_resource*
_output_shapes
:*
dtype0§
batch_normalization_4/subSub.batch_normalization_4/moments/Squeeze:output:00batch_normalization_4/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:
batch_normalization_4/truediv_1RealDivbatch_normalization_4/sub:z:0!batch_normalization_4/Maximum:z:0*
T0*
_output_shapes
:Á
batch_normalization_4/IdentityIdentity.batch_normalization_4/moments/Squeeze:output:0^batch_normalization_4/truediv ^batch_normalization_4/truediv_1*
T0*
_output_shapes
:³
 batch_normalization_4/Identity_1Identitybatch_normalization_4/Sqrt:y:0^batch_normalization_4/truediv ^batch_normalization_4/truediv_1*
T0*
_output_shapes
:z
 batch_normalization_4/Identity_2Identity'batch_normalization_4/Identity:output:0*
T0*
_output_shapes
:p
+batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¢
4batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_4_sub_readvariableop_resource*
_output_shapes
:*
dtype0¾
)batch_normalization_4/AssignMovingAvg/subSub<batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_4/Identity_2:output:0*
T0*
_output_shapes
:º
)batch_normalization_4/AssignMovingAvg/mulMul-batch_normalization_4/AssignMovingAvg/sub:z:04batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:£
%batch_normalization_4/AssignMovingAvgAssignSubVariableOp1batch_normalization_4_sub_readvariableop_resource-batch_normalization_4/AssignMovingAvg/mul:z:05^batch_normalization_4/AssignMovingAvg/ReadVariableOp)^batch_normalization_4/sub/ReadVariableOp*
_output_shapes
 *
dtype0|
 batch_normalization_4/Identity_3Identity)batch_normalization_4/Identity_1:output:0*
T0*
_output_shapes
:r
-batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¨
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_4_maximum_readvariableop_resource*
_output_shapes
:*
dtype0Â
+batch_normalization_4/AssignMovingAvg_1/subSub>batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_4/Identity_3:output:0*
T0*
_output_shapes
:À
+batch_normalization_4/AssignMovingAvg_1/mulMul/batch_normalization_4/AssignMovingAvg_1/sub:z:06batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:±
'batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_4_maximum_readvariableop_resource/batch_normalization_4/AssignMovingAvg_1/mul:z:07^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_4/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0Ì
 batch_normalization_4/Identity_4Identity'batch_normalization_4/Identity:output:0&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1*
T0*
_output_shapes
:Õ
 batch_normalization_4/Identity_5Identity0batch_normalization_4/moments/Squeeze_1:output:0&^batch_normalization_4/AssignMovingAvg(^batch_normalization_4/AssignMovingAvg_1*
T0*
_output_shapes
:v
batch_normalization_4/renorm_rStopGradient!batch_normalization_4/truediv:z:0*
T0*
_output_shapes
:x
batch_normalization_4/renorm_dStopGradient#batch_normalization_4/truediv_1:z:0*
T0*
_output_shapes
:
(batch_normalization_4/mul/ReadVariableOpReadVariableOp1batch_normalization_4_mul_readvariableop_resource*
_output_shapes
:*
dtype0 
batch_normalization_4/mulMul'batch_normalization_4/renorm_r:output:00batch_normalization_4/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
*batch_normalization_4/mul_1/ReadVariableOpReadVariableOp1batch_normalization_4_mul_readvariableop_resource*
_output_shapes
:*
dtype0¤
batch_normalization_4/mul_1Mul'batch_normalization_4/renorm_d:output:02batch_normalization_4/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:
*batch_normalization_4/add_1/ReadVariableOpReadVariableOp3batch_normalization_4_add_1_readvariableop_resource*
_output_shapes
:*
dtype0
batch_normalization_4/add_1AddV2batch_normalization_4/mul_1:z:02batch_normalization_4/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:r
-batch_normalization_4/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_4/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype0Â
+batch_normalization_4/AssignMovingAvg_2/subSub>batch_normalization_4/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_4/Identity_4:output:0*
T0*
_output_shapes
:À
+batch_normalization_4/AssignMovingAvg_2/mulMul/batch_normalization_4/AssignMovingAvg_2/sub:z:06batch_normalization_4/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_4/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_4_assignmovingavg_2_readvariableop_resource/batch_normalization_4/AssignMovingAvg_2/mul:z:07^batch_normalization_4/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0b
batch_normalization_4/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_4/add_2AddV2)batch_normalization_4/Identity_5:output:0&batch_normalization_4/add_2/y:output:0*
T0*
_output_shapes
:j
batch_normalization_4/Sqrt_2Sqrtbatch_normalization_4/add_2:z:0*
T0*
_output_shapes
:r
-batch_normalization_4/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_4/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype0¹
+batch_normalization_4/AssignMovingAvg_3/subSub>batch_normalization_4/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_4/Sqrt_2:y:0*
T0*
_output_shapes
:À
+batch_normalization_4/AssignMovingAvg_3/mulMul/batch_normalization_4/AssignMovingAvg_3/sub:z:06batch_normalization_4/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:
'batch_normalization_4/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource/batch_normalization_4/AssignMovingAvg_3/mul:z:07^batch_normalization_4/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0Ê
$batch_normalization_4/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource(^batch_normalization_4/AssignMovingAvg_3*
_output_shapes
:*
dtype0Ð
*batch_normalization_4/mul_2/ReadVariableOpReadVariableOp?batch_normalization_4_assignmovingavg_3_readvariableop_resource(^batch_normalization_4/AssignMovingAvg_3*
_output_shapes
:*
dtype0©
batch_normalization_4/mul_2Mul,batch_normalization_4/ReadVariableOp:value:02batch_normalization_4/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:b
batch_normalization_4/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_4/sub_1Subbatch_normalization_4/mul_2:z:0&batch_normalization_4/sub_1/y:output:0*
T0*
_output_shapes
:h
batch_normalization_4/ReluRelubatch_normalization_4/sub_1:z:0*
T0*
_output_shapes
:Ê
$batch_normalization_4/AssignNewValueAssignVariableOp-batch_normalization_4_assignnewvalue_resource(batch_normalization_4/Relu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
#batch_normalization_4/batchnorm/addAddV20batch_normalization_4/moments/Squeeze_1:output:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0batch_normalization_4/mul:z:0*
T0*
_output_shapes
:
%batch_normalization_4/batchnorm/mul_1Mulinputs'batch_normalization_4/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
%batch_normalization_4/batchnorm/mul_2Mul.batch_normalization_4/moments/Squeeze:output:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:
#batch_normalization_4/batchnorm/subSubbatch_normalization_4/add_1:z:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¾
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ð
conv2d_3/Conv2DConv2D)batch_normalization_4/batchnorm/add_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides

4batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Í
"batch_normalization_5/moments/meanMean max_pooling2d_3/MaxPool:output:0=batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(
*batch_normalization_5/moments/StopGradientStopGradient+batch_normalization_5/moments/mean:output:0*
T0*&
_output_shapes
:@×
/batch_normalization_5/moments/SquaredDifferenceSquaredDifference max_pooling2d_3/MaxPool:output:03batch_normalization_5/moments/StopGradient:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
8batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          è
&batch_normalization_5/moments/varianceMean3batch_normalization_5/moments/SquaredDifference:z:0Abatch_normalization_5/moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(
%batch_normalization_5/moments/SqueezeSqueeze+batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 ¡
'batch_normalization_5/moments/Squeeze_1Squeeze/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 `
batch_normalization_5/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_5/addAddV20batch_normalization_5/moments/Squeeze_1:output:0$batch_normalization_5/add/y:output:0*
T0*
_output_shapes
:@f
batch_normalization_5/SqrtSqrtbatch_normalization_5/add:z:0*
T0*
_output_shapes
:@c
batch_normalization_5/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:n
batch_normalization_5/Sqrt_1Sqrt'batch_normalization_5/Sqrt_1/x:output:0*
T0*
_output_shapes
: 
,batch_normalization_5/Maximum/ReadVariableOpReadVariableOp5batch_normalization_5_maximum_readvariableop_resource*
_output_shapes
:@*
dtype0¥
batch_normalization_5/MaximumMaximum4batch_normalization_5/Maximum/ReadVariableOp:value:0 batch_normalization_5/Sqrt_1:y:0*
T0*
_output_shapes
:@
batch_normalization_5/truedivRealDivbatch_normalization_5/Sqrt:y:0!batch_normalization_5/Maximum:z:0*
T0*
_output_shapes
:@
(batch_normalization_5/sub/ReadVariableOpReadVariableOp1batch_normalization_5_sub_readvariableop_resource*
_output_shapes
:@*
dtype0§
batch_normalization_5/subSub.batch_normalization_5/moments/Squeeze:output:00batch_normalization_5/sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@
batch_normalization_5/truediv_1RealDivbatch_normalization_5/sub:z:0!batch_normalization_5/Maximum:z:0*
T0*
_output_shapes
:@Á
batch_normalization_5/IdentityIdentity.batch_normalization_5/moments/Squeeze:output:0^batch_normalization_5/truediv ^batch_normalization_5/truediv_1*
T0*
_output_shapes
:@³
 batch_normalization_5/Identity_1Identitybatch_normalization_5/Sqrt:y:0^batch_normalization_5/truediv ^batch_normalization_5/truediv_1*
T0*
_output_shapes
:@z
 batch_normalization_5/Identity_2Identity'batch_normalization_5/Identity:output:0*
T0*
_output_shapes
:@p
+batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¢
4batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_5_sub_readvariableop_resource*
_output_shapes
:@*
dtype0¾
)batch_normalization_5/AssignMovingAvg/subSub<batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_5/Identity_2:output:0*
T0*
_output_shapes
:@º
)batch_normalization_5/AssignMovingAvg/mulMul-batch_normalization_5/AssignMovingAvg/sub:z:04batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@£
%batch_normalization_5/AssignMovingAvgAssignSubVariableOp1batch_normalization_5_sub_readvariableop_resource-batch_normalization_5/AssignMovingAvg/mul:z:05^batch_normalization_5/AssignMovingAvg/ReadVariableOp)^batch_normalization_5/sub/ReadVariableOp*
_output_shapes
 *
dtype0|
 batch_normalization_5/Identity_3Identity)batch_normalization_5/Identity_1:output:0*
T0*
_output_shapes
:@r
-batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¨
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_5_maximum_readvariableop_resource*
_output_shapes
:@*
dtype0Â
+batch_normalization_5/AssignMovingAvg_1/subSub>batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_5/Identity_3:output:0*
T0*
_output_shapes
:@À
+batch_normalization_5/AssignMovingAvg_1/mulMul/batch_normalization_5/AssignMovingAvg_1/sub:z:06batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@±
'batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_5_maximum_readvariableop_resource/batch_normalization_5/AssignMovingAvg_1/mul:z:07^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_5/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0Ì
 batch_normalization_5/Identity_4Identity'batch_normalization_5/Identity:output:0&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1*
T0*
_output_shapes
:@Õ
 batch_normalization_5/Identity_5Identity0batch_normalization_5/moments/Squeeze_1:output:0&^batch_normalization_5/AssignMovingAvg(^batch_normalization_5/AssignMovingAvg_1*
T0*
_output_shapes
:@v
batch_normalization_5/renorm_rStopGradient!batch_normalization_5/truediv:z:0*
T0*
_output_shapes
:@x
batch_normalization_5/renorm_dStopGradient#batch_normalization_5/truediv_1:z:0*
T0*
_output_shapes
:@
(batch_normalization_5/mul/ReadVariableOpReadVariableOp1batch_normalization_5_mul_readvariableop_resource*
_output_shapes
:@*
dtype0 
batch_normalization_5/mulMul'batch_normalization_5/renorm_r:output:00batch_normalization_5/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@
*batch_normalization_5/mul_1/ReadVariableOpReadVariableOp1batch_normalization_5_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¤
batch_normalization_5/mul_1Mul'batch_normalization_5/renorm_d:output:02batch_normalization_5/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@
*batch_normalization_5/add_1/ReadVariableOpReadVariableOp3batch_normalization_5_add_1_readvariableop_resource*
_output_shapes
:@*
dtype0
batch_normalization_5/add_1AddV2batch_normalization_5/mul_1:z:02batch_normalization_5/add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@r
-batch_normalization_5/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_5/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype0Â
+batch_normalization_5/AssignMovingAvg_2/subSub>batch_normalization_5/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_5/Identity_4:output:0*
T0*
_output_shapes
:@À
+batch_normalization_5/AssignMovingAvg_2/mulMul/batch_normalization_5/AssignMovingAvg_2/sub:z:06batch_normalization_5/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@
'batch_normalization_5/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_5_assignmovingavg_2_readvariableop_resource/batch_normalization_5/AssignMovingAvg_2/mul:z:07^batch_normalization_5/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0b
batch_normalization_5/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_5/add_2AddV2)batch_normalization_5/Identity_5:output:0&batch_normalization_5/add_2/y:output:0*
T0*
_output_shapes
:@j
batch_normalization_5/Sqrt_2Sqrtbatch_normalization_5/add_2:z:0*
T0*
_output_shapes
:@r
-batch_normalization_5/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<²
6batch_normalization_5/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype0¹
+batch_normalization_5/AssignMovingAvg_3/subSub>batch_normalization_5/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_5/Sqrt_2:y:0*
T0*
_output_shapes
:@À
+batch_normalization_5/AssignMovingAvg_3/mulMul/batch_normalization_5/AssignMovingAvg_3/sub:z:06batch_normalization_5/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@
'batch_normalization_5/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource/batch_normalization_5/AssignMovingAvg_3/mul:z:07^batch_normalization_5/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0Ê
$batch_normalization_5/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource(^batch_normalization_5/AssignMovingAvg_3*
_output_shapes
:@*
dtype0Ð
*batch_normalization_5/mul_2/ReadVariableOpReadVariableOp?batch_normalization_5_assignmovingavg_3_readvariableop_resource(^batch_normalization_5/AssignMovingAvg_3*
_output_shapes
:@*
dtype0©
batch_normalization_5/mul_2Mul,batch_normalization_5/ReadVariableOp:value:02batch_normalization_5/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@b
batch_normalization_5/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_5/sub_1Subbatch_normalization_5/mul_2:z:0&batch_normalization_5/sub_1/y:output:0*
T0*
_output_shapes
:@h
batch_normalization_5/ReluRelubatch_normalization_5/sub_1:z:0*
T0*
_output_shapes
:@Ê
$batch_normalization_5/AssignNewValueAssignVariableOp-batch_normalization_5_assignnewvalue_resource(batch_normalization_5/Relu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:³
#batch_normalization_5/batchnorm/addAddV20batch_normalization_5/moments/Squeeze_1:output:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0batch_normalization_5/mul:z:0*
T0*
_output_shapes
:@³
%batch_normalization_5/batchnorm/mul_1Mul max_pooling2d_3/MaxPool:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
%batch_normalization_5/batchnorm/mul_2Mul.batch_normalization_5/moments/Squeeze:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@
#batch_normalization_5/batchnorm/subSubbatch_normalization_5/add_1:z:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@¾
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ñ
conv2d_4/Conv2DConv2D)batch_normalization_5/batchnorm/add_1:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿm
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ­
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
ksize
*
paddingVALID*
strides

4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Î
"batch_normalization_6/moments/meanMean max_pooling2d_4/MaxPool:output:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*'
_output_shapes
:Ö
/batch_normalization_6/moments/SquaredDifferenceSquaredDifference max_pooling2d_4/MaxPool:output:03batch_normalization_6/moments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          é
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¢
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 `
batch_normalization_6/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o: 
batch_normalization_6/addAddV20batch_normalization_6/moments/Squeeze_1:output:0$batch_normalization_6/add/y:output:0*
T0*
_output_shapes	
:g
batch_normalization_6/SqrtSqrtbatch_normalization_6/add:z:0*
T0*
_output_shapes	
:c
batch_normalization_6/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:n
batch_normalization_6/Sqrt_1Sqrt'batch_normalization_6/Sqrt_1/x:output:0*
T0*
_output_shapes
: 
,batch_normalization_6/Maximum/ReadVariableOpReadVariableOp5batch_normalization_6_maximum_readvariableop_resource*
_output_shapes	
:*
dtype0¦
batch_normalization_6/MaximumMaximum4batch_normalization_6/Maximum/ReadVariableOp:value:0 batch_normalization_6/Sqrt_1:y:0*
T0*
_output_shapes	
:
batch_normalization_6/truedivRealDivbatch_normalization_6/Sqrt:y:0!batch_normalization_6/Maximum:z:0*
T0*
_output_shapes	
:
(batch_normalization_6/sub/ReadVariableOpReadVariableOp1batch_normalization_6_sub_readvariableop_resource*
_output_shapes	
:*
dtype0¨
batch_normalization_6/subSub.batch_normalization_6/moments/Squeeze:output:00batch_normalization_6/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:
batch_normalization_6/truediv_1RealDivbatch_normalization_6/sub:z:0!batch_normalization_6/Maximum:z:0*
T0*
_output_shapes	
:Â
batch_normalization_6/IdentityIdentity.batch_normalization_6/moments/Squeeze:output:0^batch_normalization_6/truediv ^batch_normalization_6/truediv_1*
T0*
_output_shapes	
:´
 batch_normalization_6/Identity_1Identitybatch_normalization_6/Sqrt:y:0^batch_normalization_6/truediv ^batch_normalization_6/truediv_1*
T0*
_output_shapes	
:{
 batch_normalization_6/Identity_2Identity'batch_normalization_6/Identity:output:0*
T0*
_output_shapes	
:p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<£
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_6_sub_readvariableop_resource*
_output_shapes	
:*
dtype0¿
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_6/Identity_2:output:0*
T0*
_output_shapes	
:»
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:£
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp1batch_normalization_6_sub_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp)^batch_normalization_6/sub/ReadVariableOp*
_output_shapes
 *
dtype0}
 batch_normalization_6/Identity_3Identity)batch_normalization_6/Identity_1:output:0*
T0*
_output_shapes	
:r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<©
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_6_maximum_readvariableop_resource*
_output_shapes	
:*
dtype0Ã
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_6/Identity_3:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:±
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_6_maximum_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_6/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0Í
 batch_normalization_6/Identity_4Identity'batch_normalization_6/Identity:output:0&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes	
:Ö
 batch_normalization_6/Identity_5Identity0batch_normalization_6/moments/Squeeze_1:output:0&^batch_normalization_6/AssignMovingAvg(^batch_normalization_6/AssignMovingAvg_1*
T0*
_output_shapes	
:w
batch_normalization_6/renorm_rStopGradient!batch_normalization_6/truediv:z:0*
T0*
_output_shapes	
:y
batch_normalization_6/renorm_dStopGradient#batch_normalization_6/truediv_1:z:0*
T0*
_output_shapes	
:
(batch_normalization_6/mul/ReadVariableOpReadVariableOp1batch_normalization_6_mul_readvariableop_resource*
_output_shapes	
:*
dtype0¡
batch_normalization_6/mulMul'batch_normalization_6/renorm_r:output:00batch_normalization_6/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
*batch_normalization_6/mul_1/ReadVariableOpReadVariableOp1batch_normalization_6_mul_readvariableop_resource*
_output_shapes	
:*
dtype0¥
batch_normalization_6/mul_1Mul'batch_normalization_6/renorm_d:output:02batch_normalization_6/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:
*batch_normalization_6/add_1/ReadVariableOpReadVariableOp3batch_normalization_6_add_1_readvariableop_resource*
_output_shapes	
:*
dtype0
batch_normalization_6/add_1AddV2batch_normalization_6/mul_1:z:02batch_normalization_6/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:r
-batch_normalization_6/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_6/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0Ã
+batch_normalization_6/AssignMovingAvg_2/subSub>batch_normalization_6/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_6/Identity_4:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_6/AssignMovingAvg_2/mulMul/batch_normalization_6/AssignMovingAvg_2/sub:z:06batch_normalization_6/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_6/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_6_assignmovingavg_2_readvariableop_resource/batch_normalization_6/AssignMovingAvg_2/mul:z:07^batch_normalization_6/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0b
batch_normalization_6/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_6/add_2AddV2)batch_normalization_6/Identity_5:output:0&batch_normalization_6/add_2/y:output:0*
T0*
_output_shapes	
:k
batch_normalization_6/Sqrt_2Sqrtbatch_normalization_6/add_2:z:0*
T0*
_output_shapes	
:r
-batch_normalization_6/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_6/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0º
+batch_normalization_6/AssignMovingAvg_3/subSub>batch_normalization_6/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_6/Sqrt_2:y:0*
T0*
_output_shapes	
:Á
+batch_normalization_6/AssignMovingAvg_3/mulMul/batch_normalization_6/AssignMovingAvg_3/sub:z:06batch_normalization_6/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_6/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource/batch_normalization_6/AssignMovingAvg_3/mul:z:07^batch_normalization_6/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0Ë
$batch_normalization_6/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource(^batch_normalization_6/AssignMovingAvg_3*
_output_shapes	
:*
dtype0Ñ
*batch_normalization_6/mul_2/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_3_readvariableop_resource(^batch_normalization_6/AssignMovingAvg_3*
_output_shapes	
:*
dtype0ª
batch_normalization_6/mul_2Mul,batch_normalization_6/ReadVariableOp:value:02batch_normalization_6/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:b
batch_normalization_6/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_6/sub_1Subbatch_normalization_6/mul_2:z:0&batch_normalization_6/sub_1/y:output:0*
T0*
_output_shapes	
:i
batch_normalization_6/ReluRelubatch_normalization_6/sub_1:z:0*
T0*
_output_shapes	
:Ê
$batch_normalization_6/AssignNewValueAssignVariableOp-batch_normalization_6_assignnewvalue_resource(batch_normalization_6/Relu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0batch_normalization_6/mul:z:0*
T0*
_output_shapes	
:²
%batch_normalization_6/batchnorm/mul_1Mul max_pooling2d_4/MaxPool:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA«
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:
#batch_normalization_6/batchnorm/subSubbatch_normalization_6/add_1:z:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:½
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ï
conv2d_5/Conv2DConv2D)batch_normalization_6/batchnorm/add_1:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAk
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA­
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides

4batch_normalization_7/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          Î
"batch_normalization_7/moments/meanMean max_pooling2d_5/MaxPool:output:0=batch_normalization_7/moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(
*batch_normalization_7/moments/StopGradientStopGradient+batch_normalization_7/moments/mean:output:0*
T0*'
_output_shapes
:Ö
/batch_normalization_7/moments/SquaredDifferenceSquaredDifference max_pooling2d_5/MaxPool:output:03batch_normalization_7/moments/StopGradient:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
8batch_normalization_7/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          é
&batch_normalization_7/moments/varianceMean3batch_normalization_7/moments/SquaredDifference:z:0Abatch_normalization_7/moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(
%batch_normalization_7/moments/SqueezeSqueeze+batch_normalization_7/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¢
'batch_normalization_7/moments/Squeeze_1Squeeze/batch_normalization_7/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 `
batch_normalization_7/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o: 
batch_normalization_7/addAddV20batch_normalization_7/moments/Squeeze_1:output:0$batch_normalization_7/add/y:output:0*
T0*
_output_shapes	
:g
batch_normalization_7/SqrtSqrtbatch_normalization_7/add:z:0*
T0*
_output_shapes	
:c
batch_normalization_7/Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:n
batch_normalization_7/Sqrt_1Sqrt'batch_normalization_7/Sqrt_1/x:output:0*
T0*
_output_shapes
: 
,batch_normalization_7/Maximum/ReadVariableOpReadVariableOp5batch_normalization_7_maximum_readvariableop_resource*
_output_shapes	
:*
dtype0¦
batch_normalization_7/MaximumMaximum4batch_normalization_7/Maximum/ReadVariableOp:value:0 batch_normalization_7/Sqrt_1:y:0*
T0*
_output_shapes	
:
batch_normalization_7/truedivRealDivbatch_normalization_7/Sqrt:y:0!batch_normalization_7/Maximum:z:0*
T0*
_output_shapes	
:
(batch_normalization_7/sub/ReadVariableOpReadVariableOp1batch_normalization_7_sub_readvariableop_resource*
_output_shapes	
:*
dtype0¨
batch_normalization_7/subSub.batch_normalization_7/moments/Squeeze:output:00batch_normalization_7/sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:
batch_normalization_7/truediv_1RealDivbatch_normalization_7/sub:z:0!batch_normalization_7/Maximum:z:0*
T0*
_output_shapes	
:Â
batch_normalization_7/IdentityIdentity.batch_normalization_7/moments/Squeeze:output:0^batch_normalization_7/truediv ^batch_normalization_7/truediv_1*
T0*
_output_shapes	
:´
 batch_normalization_7/Identity_1Identitybatch_normalization_7/Sqrt:y:0^batch_normalization_7/truediv ^batch_normalization_7/truediv_1*
T0*
_output_shapes	
:{
 batch_normalization_7/Identity_2Identity'batch_normalization_7/Identity:output:0*
T0*
_output_shapes	
:p
+batch_normalization_7/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<£
4batch_normalization_7/AssignMovingAvg/ReadVariableOpReadVariableOp1batch_normalization_7_sub_readvariableop_resource*
_output_shapes	
:*
dtype0¿
)batch_normalization_7/AssignMovingAvg/subSub<batch_normalization_7/AssignMovingAvg/ReadVariableOp:value:0)batch_normalization_7/Identity_2:output:0*
T0*
_output_shapes	
:»
)batch_normalization_7/AssignMovingAvg/mulMul-batch_normalization_7/AssignMovingAvg/sub:z:04batch_normalization_7/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:£
%batch_normalization_7/AssignMovingAvgAssignSubVariableOp1batch_normalization_7_sub_readvariableop_resource-batch_normalization_7/AssignMovingAvg/mul:z:05^batch_normalization_7/AssignMovingAvg/ReadVariableOp)^batch_normalization_7/sub/ReadVariableOp*
_output_shapes
 *
dtype0}
 batch_normalization_7/Identity_3Identity)batch_normalization_7/Identity_1:output:0*
T0*
_output_shapes	
:r
-batch_normalization_7/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<©
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOpReadVariableOp5batch_normalization_7_maximum_readvariableop_resource*
_output_shapes	
:*
dtype0Ã
+batch_normalization_7/AssignMovingAvg_1/subSub>batch_normalization_7/AssignMovingAvg_1/ReadVariableOp:value:0)batch_normalization_7/Identity_3:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_7/AssignMovingAvg_1/mulMul/batch_normalization_7/AssignMovingAvg_1/sub:z:06batch_normalization_7/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:±
'batch_normalization_7/AssignMovingAvg_1AssignSubVariableOp5batch_normalization_7_maximum_readvariableop_resource/batch_normalization_7/AssignMovingAvg_1/mul:z:07^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp-^batch_normalization_7/Maximum/ReadVariableOp*
_output_shapes
 *
dtype0Í
 batch_normalization_7/Identity_4Identity'batch_normalization_7/Identity:output:0&^batch_normalization_7/AssignMovingAvg(^batch_normalization_7/AssignMovingAvg_1*
T0*
_output_shapes	
:Ö
 batch_normalization_7/Identity_5Identity0batch_normalization_7/moments/Squeeze_1:output:0&^batch_normalization_7/AssignMovingAvg(^batch_normalization_7/AssignMovingAvg_1*
T0*
_output_shapes	
:w
batch_normalization_7/renorm_rStopGradient!batch_normalization_7/truediv:z:0*
T0*
_output_shapes	
:y
batch_normalization_7/renorm_dStopGradient#batch_normalization_7/truediv_1:z:0*
T0*
_output_shapes	
:
(batch_normalization_7/mul/ReadVariableOpReadVariableOp1batch_normalization_7_mul_readvariableop_resource*
_output_shapes	
:*
dtype0¡
batch_normalization_7/mulMul'batch_normalization_7/renorm_r:output:00batch_normalization_7/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:
*batch_normalization_7/mul_1/ReadVariableOpReadVariableOp1batch_normalization_7_mul_readvariableop_resource*
_output_shapes	
:*
dtype0¥
batch_normalization_7/mul_1Mul'batch_normalization_7/renorm_d:output:02batch_normalization_7/mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:
*batch_normalization_7/add_1/ReadVariableOpReadVariableOp3batch_normalization_7_add_1_readvariableop_resource*
_output_shapes	
:*
dtype0
batch_normalization_7/add_1AddV2batch_normalization_7/mul_1:z:02batch_normalization_7/add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:r
-batch_normalization_7/AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_7/AssignMovingAvg_2/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0Ã
+batch_normalization_7/AssignMovingAvg_2/subSub>batch_normalization_7/AssignMovingAvg_2/ReadVariableOp:value:0)batch_normalization_7/Identity_4:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_7/AssignMovingAvg_2/mulMul/batch_normalization_7/AssignMovingAvg_2/sub:z:06batch_normalization_7/AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_7/AssignMovingAvg_2AssignSubVariableOp?batch_normalization_7_assignmovingavg_2_readvariableop_resource/batch_normalization_7/AssignMovingAvg_2/mul:z:07^batch_normalization_7/AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0b
batch_normalization_7/add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_7/add_2AddV2)batch_normalization_7/Identity_5:output:0&batch_normalization_7/add_2/y:output:0*
T0*
_output_shapes	
:k
batch_normalization_7/Sqrt_2Sqrtbatch_normalization_7/add_2:z:0*
T0*
_output_shapes	
:r
-batch_normalization_7/AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_7/AssignMovingAvg_3/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0º
+batch_normalization_7/AssignMovingAvg_3/subSub>batch_normalization_7/AssignMovingAvg_3/ReadVariableOp:value:0 batch_normalization_7/Sqrt_2:y:0*
T0*
_output_shapes	
:Á
+batch_normalization_7/AssignMovingAvg_3/mulMul/batch_normalization_7/AssignMovingAvg_3/sub:z:06batch_normalization_7/AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_7/AssignMovingAvg_3AssignSubVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource/batch_normalization_7/AssignMovingAvg_3/mul:z:07^batch_normalization_7/AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0Ë
$batch_normalization_7/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource(^batch_normalization_7/AssignMovingAvg_3*
_output_shapes	
:*
dtype0Ñ
*batch_normalization_7/mul_2/ReadVariableOpReadVariableOp?batch_normalization_7_assignmovingavg_3_readvariableop_resource(^batch_normalization_7/AssignMovingAvg_3*
_output_shapes	
:*
dtype0ª
batch_normalization_7/mul_2Mul,batch_normalization_7/ReadVariableOp:value:02batch_normalization_7/mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:b
batch_normalization_7/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:
batch_normalization_7/sub_1Subbatch_normalization_7/mul_2:z:0&batch_normalization_7/sub_1/y:output:0*
T0*
_output_shapes	
:i
batch_normalization_7/ReluRelubatch_normalization_7/sub_1:z:0*
T0*
_output_shapes	
:Ê
$batch_normalization_7/AssignNewValueAssignVariableOp-batch_normalization_7_assignnewvalue_resource(batch_normalization_7/Relu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_7/batchnorm/addAddV20batch_normalization_7/moments/Squeeze_1:output:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0batch_normalization_7/mul:z:0*
T0*
_output_shapes	
:²
%batch_normalization_7/batchnorm/mul_1Mul max_pooling2d_5/MaxPool:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  «
%batch_normalization_7/batchnorm/mul_2Mul.batch_normalization_7/moments/Squeeze:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:
#batch_normalization_7/batchnorm/subSubbatch_normalization_7/add_1:z:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:½
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_1/ReshapeReshape)batch_normalization_7/batchnorm/add_1:z:0flatten_1/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp&^batch_normalization_4/AssignMovingAvg5^batch_normalization_4/AssignMovingAvg/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_17^batch_normalization_4/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_27^batch_normalization_4/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_4/AssignMovingAvg_37^batch_normalization_4/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_4/AssignNewValue-^batch_normalization_4/Maximum/ReadVariableOp%^batch_normalization_4/ReadVariableOp+^batch_normalization_4/add_1/ReadVariableOp)^batch_normalization_4/mul/ReadVariableOp+^batch_normalization_4/mul_1/ReadVariableOp+^batch_normalization_4/mul_2/ReadVariableOp)^batch_normalization_4/sub/ReadVariableOp&^batch_normalization_5/AssignMovingAvg5^batch_normalization_5/AssignMovingAvg/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_17^batch_normalization_5/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_27^batch_normalization_5/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_5/AssignMovingAvg_37^batch_normalization_5/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_5/AssignNewValue-^batch_normalization_5/Maximum/ReadVariableOp%^batch_normalization_5/ReadVariableOp+^batch_normalization_5/add_1/ReadVariableOp)^batch_normalization_5/mul/ReadVariableOp+^batch_normalization_5/mul_1/ReadVariableOp+^batch_normalization_5/mul_2/ReadVariableOp)^batch_normalization_5/sub/ReadVariableOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_27^batch_normalization_6/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_37^batch_normalization_6/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_6/AssignNewValue-^batch_normalization_6/Maximum/ReadVariableOp%^batch_normalization_6/ReadVariableOp+^batch_normalization_6/add_1/ReadVariableOp)^batch_normalization_6/mul/ReadVariableOp+^batch_normalization_6/mul_1/ReadVariableOp+^batch_normalization_6/mul_2/ReadVariableOp)^batch_normalization_6/sub/ReadVariableOp&^batch_normalization_7/AssignMovingAvg5^batch_normalization_7/AssignMovingAvg/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_17^batch_normalization_7/AssignMovingAvg_1/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_27^batch_normalization_7/AssignMovingAvg_2/ReadVariableOp(^batch_normalization_7/AssignMovingAvg_37^batch_normalization_7/AssignMovingAvg_3/ReadVariableOp%^batch_normalization_7/AssignNewValue-^batch_normalization_7/Maximum/ReadVariableOp%^batch_normalization_7/ReadVariableOp+^batch_normalization_7/add_1/ReadVariableOp)^batch_normalization_7/mul/ReadVariableOp+^batch_normalization_7/mul_1/ReadVariableOp+^batch_normalization_7/mul_2/ReadVariableOp)^batch_normalization_7/sub/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_4/AssignMovingAvg%batch_normalization_4/AssignMovingAvg2l
4batch_normalization_4/AssignMovingAvg/ReadVariableOp4batch_normalization_4/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_1'batch_normalization_4/AssignMovingAvg_12p
6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp6batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_2'batch_normalization_4/AssignMovingAvg_22p
6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp6batch_normalization_4/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_4/AssignMovingAvg_3'batch_normalization_4/AssignMovingAvg_32p
6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp6batch_normalization_4/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_4/AssignNewValue$batch_normalization_4/AssignNewValue2\
,batch_normalization_4/Maximum/ReadVariableOp,batch_normalization_4/Maximum/ReadVariableOp2L
$batch_normalization_4/ReadVariableOp$batch_normalization_4/ReadVariableOp2X
*batch_normalization_4/add_1/ReadVariableOp*batch_normalization_4/add_1/ReadVariableOp2T
(batch_normalization_4/mul/ReadVariableOp(batch_normalization_4/mul/ReadVariableOp2X
*batch_normalization_4/mul_1/ReadVariableOp*batch_normalization_4/mul_1/ReadVariableOp2X
*batch_normalization_4/mul_2/ReadVariableOp*batch_normalization_4/mul_2/ReadVariableOp2T
(batch_normalization_4/sub/ReadVariableOp(batch_normalization_4/sub/ReadVariableOp2N
%batch_normalization_5/AssignMovingAvg%batch_normalization_5/AssignMovingAvg2l
4batch_normalization_5/AssignMovingAvg/ReadVariableOp4batch_normalization_5/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_1'batch_normalization_5/AssignMovingAvg_12p
6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp6batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_2'batch_normalization_5/AssignMovingAvg_22p
6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp6batch_normalization_5/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_5/AssignMovingAvg_3'batch_normalization_5/AssignMovingAvg_32p
6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp6batch_normalization_5/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_5/AssignNewValue$batch_normalization_5/AssignNewValue2\
,batch_normalization_5/Maximum/ReadVariableOp,batch_normalization_5/Maximum/ReadVariableOp2L
$batch_normalization_5/ReadVariableOp$batch_normalization_5/ReadVariableOp2X
*batch_normalization_5/add_1/ReadVariableOp*batch_normalization_5/add_1/ReadVariableOp2T
(batch_normalization_5/mul/ReadVariableOp(batch_normalization_5/mul/ReadVariableOp2X
*batch_normalization_5/mul_1/ReadVariableOp*batch_normalization_5/mul_1/ReadVariableOp2X
*batch_normalization_5/mul_2/ReadVariableOp*batch_normalization_5/mul_2/ReadVariableOp2T
(batch_normalization_5/sub/ReadVariableOp(batch_normalization_5/sub/ReadVariableOp2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_2'batch_normalization_6/AssignMovingAvg_22p
6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp6batch_normalization_6/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_3'batch_normalization_6/AssignMovingAvg_32p
6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp6batch_normalization_6/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_6/AssignNewValue$batch_normalization_6/AssignNewValue2\
,batch_normalization_6/Maximum/ReadVariableOp,batch_normalization_6/Maximum/ReadVariableOp2L
$batch_normalization_6/ReadVariableOp$batch_normalization_6/ReadVariableOp2X
*batch_normalization_6/add_1/ReadVariableOp*batch_normalization_6/add_1/ReadVariableOp2T
(batch_normalization_6/mul/ReadVariableOp(batch_normalization_6/mul/ReadVariableOp2X
*batch_normalization_6/mul_1/ReadVariableOp*batch_normalization_6/mul_1/ReadVariableOp2X
*batch_normalization_6/mul_2/ReadVariableOp*batch_normalization_6/mul_2/ReadVariableOp2T
(batch_normalization_6/sub/ReadVariableOp(batch_normalization_6/sub/ReadVariableOp2N
%batch_normalization_7/AssignMovingAvg%batch_normalization_7/AssignMovingAvg2l
4batch_normalization_7/AssignMovingAvg/ReadVariableOp4batch_normalization_7/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_1'batch_normalization_7/AssignMovingAvg_12p
6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp6batch_normalization_7/AssignMovingAvg_1/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_2'batch_normalization_7/AssignMovingAvg_22p
6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp6batch_normalization_7/AssignMovingAvg_2/ReadVariableOp2R
'batch_normalization_7/AssignMovingAvg_3'batch_normalization_7/AssignMovingAvg_32p
6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp6batch_normalization_7/AssignMovingAvg_3/ReadVariableOp2L
$batch_normalization_7/AssignNewValue$batch_normalization_7/AssignNewValue2\
,batch_normalization_7/Maximum/ReadVariableOp,batch_normalization_7/Maximum/ReadVariableOp2L
$batch_normalization_7/ReadVariableOp$batch_normalization_7/ReadVariableOp2X
*batch_normalization_7/add_1/ReadVariableOp*batch_normalization_7/add_1/ReadVariableOp2T
(batch_normalization_7/mul/ReadVariableOp(batch_normalization_7/mul/ReadVariableOp2X
*batch_normalization_7/mul_1/ReadVariableOp*batch_normalization_7/mul_1/ReadVariableOp2X
*batch_normalization_7/mul_2/ReadVariableOp*batch_normalization_7/mul_2/ReadVariableOp2T
(batch_normalization_7/sub/ReadVariableOp(batch_normalization_7/sub/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


¢
5__inference_batch_normalization_7_layer_call_fn_73504

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71606
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
òC
ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_72255
input_2)
batch_normalization_4_72189:)
batch_normalization_4_72191:)
batch_normalization_4_72193:)
batch_normalization_4_72195:(
conv2d_3_72198:@
conv2d_3_72200:@)
batch_normalization_5_72204:@)
batch_normalization_5_72206:@)
batch_normalization_5_72208:@)
batch_normalization_5_72210:@)
conv2d_4_72213:@
conv2d_4_72215:	*
batch_normalization_6_72219:	*
batch_normalization_6_72221:	*
batch_normalization_6_72223:	*
batch_normalization_6_72225:	*
conv2d_5_72228:
conv2d_5_72230:	*
batch_normalization_7_72234:	*
batch_normalization_7_72236:	*
batch_normalization_7_72238:	*
batch_normalization_7_72240:	!
dense_2_72244:

dense_2_72246:
dense_3_72249:
dense_3_72251:
identity¢-batch_normalization_4/StatefulPartitionedCall¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallê
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinput_2batch_normalization_4_72189batch_normalization_4_72191batch_normalization_4_72193batch_normalization_4_72195*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71087§
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_3_72198conv2d_3_72200*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650ò
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_72204batch_normalization_5_72206batch_normalization_5_72208batch_normalization_5_72210*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71230¨
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_4_72213conv2d_4_72215*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677ñ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_72219batch_normalization_6_72221batch_normalization_6_72223batch_normalization_6_72225*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71373¦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_5_72228conv2d_5_72230*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704ñ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_72234batch_normalization_7_72236batch_normalization_7_72238batch_normalization_7_72240*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71516ë
flatten_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_72244dense_2_72246*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_71739
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_72249dense_3_72251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_71756w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ª
Ó
G__inference_sequential_1_layer_call_and_return_conditional_losses_72659

inputsE
7batch_normalization_4_batchnorm_readvariableop_resource:I
;batch_normalization_4_batchnorm_mul_readvariableop_resource:G
9batch_normalization_4_batchnorm_readvariableop_1_resource:G
9batch_normalization_4_batchnorm_readvariableop_2_resource:A
'conv2d_3_conv2d_readvariableop_resource:@6
(conv2d_3_biasadd_readvariableop_resource:@E
7batch_normalization_5_batchnorm_readvariableop_resource:@I
;batch_normalization_5_batchnorm_mul_readvariableop_resource:@G
9batch_normalization_5_batchnorm_readvariableop_1_resource:@G
9batch_normalization_5_batchnorm_readvariableop_2_resource:@B
'conv2d_4_conv2d_readvariableop_resource:@7
(conv2d_4_biasadd_readvariableop_resource:	F
7batch_normalization_6_batchnorm_readvariableop_resource:	J
;batch_normalization_6_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_6_batchnorm_readvariableop_1_resource:	H
9batch_normalization_6_batchnorm_readvariableop_2_resource:	C
'conv2d_5_conv2d_readvariableop_resource:7
(conv2d_5_biasadd_readvariableop_resource:	F
7batch_normalization_7_batchnorm_readvariableop_resource:	J
;batch_normalization_7_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_7_batchnorm_readvariableop_1_resource:	H
9batch_normalization_7_batchnorm_readvariableop_2_resource:	:
&dense_2_matmul_readvariableop_resource:
5
'dense_2_biasadd_readvariableop_resource:8
&dense_3_matmul_readvariableop_resource:5
'dense_3_biasadd_readvariableop_resource:
identity¢.batch_normalization_4/batchnorm/ReadVariableOp¢0batch_normalization_4/batchnorm/ReadVariableOp_1¢0batch_normalization_4/batchnorm/ReadVariableOp_2¢2batch_normalization_4/batchnorm/mul/ReadVariableOp¢.batch_normalization_5/batchnorm/ReadVariableOp¢0batch_normalization_5/batchnorm/ReadVariableOp_1¢0batch_normalization_5/batchnorm/ReadVariableOp_2¢2batch_normalization_5/batchnorm/mul/ReadVariableOp¢.batch_normalization_6/batchnorm/ReadVariableOp¢0batch_normalization_6/batchnorm/ReadVariableOp_1¢0batch_normalization_6/batchnorm/ReadVariableOp_2¢2batch_normalization_6/batchnorm/mul/ReadVariableOp¢.batch_normalization_7/batchnorm/ReadVariableOp¢0batch_normalization_7/batchnorm/ReadVariableOp_1¢0batch_normalization_7/batchnorm/ReadVariableOp_2¢2batch_normalization_7/batchnorm/mul/ReadVariableOp¢conv2d_3/BiasAdd/ReadVariableOp¢conv2d_3/Conv2D/ReadVariableOp¢conv2d_4/BiasAdd/ReadVariableOp¢conv2d_4/Conv2D/ReadVariableOp¢conv2d_5/BiasAdd/ReadVariableOp¢conv2d_5/Conv2D/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢
.batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
#batch_normalization_4/batchnorm/addAddV26batch_normalization_4/batchnorm/ReadVariableOp:value:0.batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_4/batchnorm/RsqrtRsqrt'batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:ª
2batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¶
#batch_normalization_4/batchnorm/mulMul)batch_normalization_4/batchnorm/Rsqrt:y:0:batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
%batch_normalization_4/batchnorm/mul_1Mulinputs'batch_normalization_4/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0´
%batch_normalization_4/batchnorm/mul_2Mul8batch_normalization_4/batchnorm/ReadVariableOp_1:value:0'batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:¦
0batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0´
#batch_normalization_4/batchnorm/subSub8batch_normalization_4/batchnorm/ReadVariableOp_2:value:0)batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:¾
%batch_normalization_4/batchnorm/add_1AddV2)batch_normalization_4/batchnorm/mul_1:z:0'batch_normalization_4/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0Ð
conv2d_3/Conv2DConv2D)batch_normalization_4/batchnorm/add_1:z:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
¢
.batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0j
%batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¹
#batch_normalization_5/batchnorm/addAddV26batch_normalization_5/batchnorm/ReadVariableOp:value:0.batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@|
%batch_normalization_5/batchnorm/RsqrtRsqrt'batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@ª
2batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0¶
#batch_normalization_5/batchnorm/mulMul)batch_normalization_5/batchnorm/Rsqrt:y:0:batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@³
%batch_normalization_5/batchnorm/mul_1Mul max_pooling2d_3/MaxPool:output:0'batch_normalization_5/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
0batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0´
%batch_normalization_5/batchnorm/mul_2Mul8batch_normalization_5/batchnorm/ReadVariableOp_1:value:0'batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@¦
0batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0´
#batch_normalization_5/batchnorm/subSub8batch_normalization_5/batchnorm/ReadVariableOp_2:value:0)batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@¾
%batch_normalization_5/batchnorm/add_1AddV2)batch_normalization_5/batchnorm/mul_1:z:0'batch_normalization_5/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ñ
conv2d_4/Conv2DConv2D)batch_normalization_5/batchnorm/add_1:z:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿm
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ­
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
ksize
*
paddingVALID*
strides
£
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:«
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0·
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
%batch_normalization_6/batchnorm/mul_1Mul max_pooling2d_4/MaxPool:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA§
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0µ
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:½
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ï
conv2d_5/Conv2DConv2D)batch_normalization_6/batchnorm/add_1:z:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
paddingSAME*
strides

conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAk
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA­
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
£
.batch_normalization_7/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_7/batchnorm/addAddV26batch_normalization_7/batchnorm/ReadVariableOp:value:0.batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_7/batchnorm/RsqrtRsqrt'batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:«
2batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0·
#batch_normalization_7/batchnorm/mulMul)batch_normalization_7/batchnorm/Rsqrt:y:0:batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:²
%batch_normalization_7/batchnorm/mul_1Mul max_pooling2d_5/MaxPool:output:0'batch_normalization_7/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  §
0batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
%batch_normalization_7/batchnorm/mul_2Mul8batch_normalization_7/batchnorm/ReadVariableOp_1:value:0'batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0µ
#batch_normalization_7/batchnorm/subSub8batch_normalization_7/batchnorm/ReadVariableOp_2:value:0)batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:½
%batch_normalization_7/batchnorm/add_1AddV2)batch_normalization_7/batchnorm/mul_1:z:0'batch_normalization_7/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
flatten_1/ReshapeReshape)batch_normalization_7/batchnorm/add_1:z:0flatten_1/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitydense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ	
NoOpNoOp/^batch_normalization_4/batchnorm/ReadVariableOp1^batch_normalization_4/batchnorm/ReadVariableOp_11^batch_normalization_4/batchnorm/ReadVariableOp_23^batch_normalization_4/batchnorm/mul/ReadVariableOp/^batch_normalization_5/batchnorm/ReadVariableOp1^batch_normalization_5/batchnorm/ReadVariableOp_11^batch_normalization_5/batchnorm/ReadVariableOp_23^batch_normalization_5/batchnorm/mul/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp/^batch_normalization_7/batchnorm/ReadVariableOp1^batch_normalization_7/batchnorm/ReadVariableOp_11^batch_normalization_7/batchnorm/ReadVariableOp_23^batch_normalization_7/batchnorm/mul/ReadVariableOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_4/batchnorm/ReadVariableOp.batch_normalization_4/batchnorm/ReadVariableOp2d
0batch_normalization_4/batchnorm/ReadVariableOp_10batch_normalization_4/batchnorm/ReadVariableOp_12d
0batch_normalization_4/batchnorm/ReadVariableOp_20batch_normalization_4/batchnorm/ReadVariableOp_22h
2batch_normalization_4/batchnorm/mul/ReadVariableOp2batch_normalization_4/batchnorm/mul/ReadVariableOp2`
.batch_normalization_5/batchnorm/ReadVariableOp.batch_normalization_5/batchnorm/ReadVariableOp2d
0batch_normalization_5/batchnorm/ReadVariableOp_10batch_normalization_5/batchnorm/ReadVariableOp_12d
0batch_normalization_5/batchnorm/ReadVariableOp_20batch_normalization_5/batchnorm/ReadVariableOp_22h
2batch_normalization_5/batchnorm/mul/ReadVariableOp2batch_normalization_5/batchnorm/mul/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.batch_normalization_7/batchnorm/ReadVariableOp.batch_normalization_7/batchnorm/ReadVariableOp2d
0batch_normalization_7/batchnorm/ReadVariableOp_10batch_normalization_7/batchnorm/ReadVariableOp_12d
0batch_normalization_7/batchnorm/ReadVariableOp_20batch_normalization_7/batchnorm/ReadVariableOp_22h
2batch_normalization_7/batchnorm/mul/ReadVariableOp2batch_normalization_7/batchnorm/mul/ReadVariableOp2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñJ
ð
G__inference_sequential_1_layer_call_and_return_conditional_losses_72026

inputs)
batch_normalization_4_71936:)
batch_normalization_4_71938:)
batch_normalization_4_71940:)
batch_normalization_4_71942:)
batch_normalization_4_71944:)
batch_normalization_4_71946:)
batch_normalization_4_71948:(
conv2d_3_71951:@
conv2d_3_71953:@)
batch_normalization_5_71957:@)
batch_normalization_5_71959:@)
batch_normalization_5_71961:@)
batch_normalization_5_71963:@)
batch_normalization_5_71965:@)
batch_normalization_5_71967:@)
batch_normalization_5_71969:@)
conv2d_4_71972:@
conv2d_4_71974:	*
batch_normalization_6_71978:	*
batch_normalization_6_71980:	*
batch_normalization_6_71982:	*
batch_normalization_6_71984:	*
batch_normalization_6_71986:	*
batch_normalization_6_71988:	*
batch_normalization_6_71990:	*
conv2d_5_71993:
conv2d_5_71995:	*
batch_normalization_7_71999:	*
batch_normalization_7_72001:	*
batch_normalization_7_72003:	*
batch_normalization_7_72005:	*
batch_normalization_7_72007:	*
batch_normalization_7_72009:	*
batch_normalization_7_72011:	!
dense_2_72015:

dense_2_72017:
dense_3_72020:
dense_3_72022:
identity¢-batch_normalization_4/StatefulPartitionedCall¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallÁ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_4_71936batch_normalization_4_71938batch_normalization_4_71940batch_normalization_4_71942batch_normalization_4_71944batch_normalization_4_71946batch_normalization_4_71948*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71177§
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_3_71951conv2d_3_71953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650ò
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203ã
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_71957batch_normalization_5_71959batch_normalization_5_71961batch_normalization_5_71963batch_normalization_5_71965batch_normalization_5_71967batch_normalization_5_71969*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71320¨
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_4_71972conv2d_4_71974*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677ñ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346â
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_71978batch_normalization_6_71980batch_normalization_6_71982batch_normalization_6_71984batch_normalization_6_71986batch_normalization_6_71988batch_normalization_6_71990*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71463¦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_5_71993conv2d_5_71995*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704ñ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489â
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_71999batch_normalization_7_72001batch_normalization_7_72003batch_normalization_7_72005batch_normalization_7_72007batch_normalization_7_72009batch_normalization_7_72011*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71606ë
flatten_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_72015dense_2_72017*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_71739
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_72020dense_3_72022*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_71756w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡

õ
B__inference_dense_2_layer_call_and_return_conditional_losses_73632

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
³
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71373

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_5_layer_call_fn_73467

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÝP
¾
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73283

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@¡
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:]
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: r
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype0c
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@N
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@j
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0e
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@O
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@i
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@[

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@N

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<v
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0|
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0P

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<|
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0t

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@}

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@J
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@L
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@j
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype0^
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@l
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype0b
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype0\
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Z
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@>
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype0w
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@~
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype0g
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:N
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@<
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@W
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@Y
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@~

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@È
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
â
³
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73365

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô

(__inference_conv2d_4_layer_call_fn_73292

inputs"
unknown:@
	unknown_0:	
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677z
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ð
¯
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73206

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ô
¸
,__inference_sequential_1_layer_call_fn_71818
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:

unknown_23:

unknown_24:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_71763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
¯
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71087

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
E
)__inference_flatten_1_layer_call_fn_73606

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Þ
ö
,__inference_sequential_1_layer_call_fn_72186
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	&

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:


unknown_34:

unknown_35:

unknown_36:
identity¢StatefulPartitionedCall¸
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	#$%&*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_72026o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2

ü
C__inference_conv2d_3_layer_call_and_return_conditional_losses_73144

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
·
,__inference_sequential_1_layer_call_fn_72470

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:

unknown_23:

unknown_24:
identity¢StatefulPartitionedCall£
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_71763o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÝP
¾
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73124

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:¡
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:]
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
::
SqrtSqrtadd:z:0*
T0*
_output_shapes
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: r
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype0c
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:N
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:j
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0e
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:O
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:i
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:[

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:N

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<v
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0|
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0P

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<|
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0t

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:}

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:J
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:L
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:j
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype0^
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:l
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype0b
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0\
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Z
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:>
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype0w
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:~
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype0g
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:N
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:<
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:W
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:Y
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ð
5__inference_batch_normalization_5_layer_call_fn_73167

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71230
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


¢
5__inference_batch_normalization_6_layer_call_fn_73345

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
identity¢StatefulPartitionedCall¼
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71463
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

ÿ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_73462

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿAA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_73313

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Q
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73442

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:¢
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:^
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: s
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0d
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:O
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:k
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0f
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:P
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:j
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:\

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:O

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<w
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0}
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0Q

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<}
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0u

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:~

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:K
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:M
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:k
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0_
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:m
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0c
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0]
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:[
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0x
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0h
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:O
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:=
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:X
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Z
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
³
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71516

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
5__inference_batch_normalization_6_layer_call_fn_73326

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71373
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

þ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_73303

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ[
ReluReluBiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿl
IdentityIdentityRelu:activations:0^NoOp*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


ó
B__inference_dense_3_layer_call_and_return_conditional_losses_71756

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾

'__inference_dense_3_layer_call_fn_73641

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_71756o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ð
¯
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71230

inputs/
!batchnorm_readvariableop_resource:@3
%batchnorm_mul_readvariableop_resource:@1
#batchnorm_readvariableop_1_resource:@1
#batchnorm_readvariableop_2_resource:@
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_73154

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
³
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73524

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ôJ
ñ
G__inference_sequential_1_layer_call_and_return_conditional_losses_72348
input_2)
batch_normalization_4_72258:)
batch_normalization_4_72260:)
batch_normalization_4_72262:)
batch_normalization_4_72264:)
batch_normalization_4_72266:)
batch_normalization_4_72268:)
batch_normalization_4_72270:(
conv2d_3_72273:@
conv2d_3_72275:@)
batch_normalization_5_72279:@)
batch_normalization_5_72281:@)
batch_normalization_5_72283:@)
batch_normalization_5_72285:@)
batch_normalization_5_72287:@)
batch_normalization_5_72289:@)
batch_normalization_5_72291:@)
conv2d_4_72294:@
conv2d_4_72296:	*
batch_normalization_6_72300:	*
batch_normalization_6_72302:	*
batch_normalization_6_72304:	*
batch_normalization_6_72306:	*
batch_normalization_6_72308:	*
batch_normalization_6_72310:	*
batch_normalization_6_72312:	*
conv2d_5_72315:
conv2d_5_72317:	*
batch_normalization_7_72321:	*
batch_normalization_7_72323:	*
batch_normalization_7_72325:	*
batch_normalization_7_72327:	*
batch_normalization_7_72329:	*
batch_normalization_7_72331:	*
batch_normalization_7_72333:	!
dense_2_72337:

dense_2_72339:
dense_3_72342:
dense_3_72344:
identity¢-batch_normalization_4/StatefulPartitionedCall¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallÂ
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinput_2batch_normalization_4_72258batch_normalization_4_72260batch_normalization_4_72262batch_normalization_4_72264batch_normalization_4_72266batch_normalization_4_72268batch_normalization_4_72270*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71177§
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_3_72273conv2d_3_72275*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650ò
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203ã
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_72279batch_normalization_5_72281batch_normalization_5_72283batch_normalization_5_72285batch_normalization_5_72287batch_normalization_5_72289batch_normalization_5_72291*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71320¨
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_4_72294conv2d_4_72296*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677ñ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346â
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_72300batch_normalization_6_72302batch_normalization_6_72304batch_normalization_6_72306batch_normalization_6_72308batch_normalization_6_72310batch_normalization_6_72312*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71463¦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_5_72315conv2d_5_72317*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704ñ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489â
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_72321batch_normalization_7_72323batch_normalization_7_72325batch_normalization_7_72327batch_normalization_7_72329batch_normalization_7_72331batch_normalization_7_72333*
Tin

2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71606ë
flatten_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_72337dense_2_72339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_71739
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_72342dense_3_72344*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_71756w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
	
Ð
5__inference_batch_normalization_4_layer_call_fn_73008

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71087
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_73472

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	
Ô
5__inference_batch_normalization_7_layer_call_fn_73485

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71516
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×Ï
 7
!__inference__traced_restore_74183
file_prefix:
,assignvariableop_batch_normalization_4_gamma:;
-assignvariableop_1_batch_normalization_4_beta:B
4assignvariableop_2_batch_normalization_4_moving_mean:F
8assignvariableop_3_batch_normalization_4_moving_variance:D
6assignvariableop_4_batch_normalization_4_moving_stddev:B
4assignvariableop_5_batch_normalization_4_renorm_mean:D
6assignvariableop_6_batch_normalization_4_renorm_stddev:<
"assignvariableop_7_conv2d_3_kernel:@.
 assignvariableop_8_conv2d_3_bias:@<
.assignvariableop_9_batch_normalization_5_gamma:@<
.assignvariableop_10_batch_normalization_5_beta:@C
5assignvariableop_11_batch_normalization_5_moving_mean:@G
9assignvariableop_12_batch_normalization_5_moving_variance:@E
7assignvariableop_13_batch_normalization_5_moving_stddev:@C
5assignvariableop_14_batch_normalization_5_renorm_mean:@E
7assignvariableop_15_batch_normalization_5_renorm_stddev:@>
#assignvariableop_16_conv2d_4_kernel:@0
!assignvariableop_17_conv2d_4_bias:	>
/assignvariableop_18_batch_normalization_6_gamma:	=
.assignvariableop_19_batch_normalization_6_beta:	D
5assignvariableop_20_batch_normalization_6_moving_mean:	H
9assignvariableop_21_batch_normalization_6_moving_variance:	F
7assignvariableop_22_batch_normalization_6_moving_stddev:	D
5assignvariableop_23_batch_normalization_6_renorm_mean:	F
7assignvariableop_24_batch_normalization_6_renorm_stddev:	?
#assignvariableop_25_conv2d_5_kernel:0
!assignvariableop_26_conv2d_5_bias:	>
/assignvariableop_27_batch_normalization_7_gamma:	=
.assignvariableop_28_batch_normalization_7_beta:	D
5assignvariableop_29_batch_normalization_7_moving_mean:	H
9assignvariableop_30_batch_normalization_7_moving_variance:	F
7assignvariableop_31_batch_normalization_7_moving_stddev:	D
5assignvariableop_32_batch_normalization_7_renorm_mean:	F
7assignvariableop_33_batch_normalization_7_renorm_stddev:	6
"assignvariableop_34_dense_2_kernel:
.
 assignvariableop_35_dense_2_bias:4
"assignvariableop_36_dense_3_kernel:.
 assignvariableop_37_dense_3_bias:'
assignvariableop_38_adam_iter:	 )
assignvariableop_39_adam_beta_1: )
assignvariableop_40_adam_beta_2: (
assignvariableop_41_adam_decay: 0
&assignvariableop_42_adam_learning_rate: %
assignvariableop_43_total_1: %
assignvariableop_44_count_1: #
assignvariableop_45_total: #
assignvariableop_46_count: D
6assignvariableop_47_adam_batch_normalization_4_gamma_m:C
5assignvariableop_48_adam_batch_normalization_4_beta_m:D
*assignvariableop_49_adam_conv2d_3_kernel_m:@6
(assignvariableop_50_adam_conv2d_3_bias_m:@D
6assignvariableop_51_adam_batch_normalization_5_gamma_m:@C
5assignvariableop_52_adam_batch_normalization_5_beta_m:@E
*assignvariableop_53_adam_conv2d_4_kernel_m:@7
(assignvariableop_54_adam_conv2d_4_bias_m:	E
6assignvariableop_55_adam_batch_normalization_6_gamma_m:	D
5assignvariableop_56_adam_batch_normalization_6_beta_m:	F
*assignvariableop_57_adam_conv2d_5_kernel_m:7
(assignvariableop_58_adam_conv2d_5_bias_m:	E
6assignvariableop_59_adam_batch_normalization_7_gamma_m:	D
5assignvariableop_60_adam_batch_normalization_7_beta_m:	=
)assignvariableop_61_adam_dense_2_kernel_m:
5
'assignvariableop_62_adam_dense_2_bias_m:;
)assignvariableop_63_adam_dense_3_kernel_m:5
'assignvariableop_64_adam_dense_3_bias_m:D
6assignvariableop_65_adam_batch_normalization_4_gamma_v:C
5assignvariableop_66_adam_batch_normalization_4_beta_v:D
*assignvariableop_67_adam_conv2d_3_kernel_v:@6
(assignvariableop_68_adam_conv2d_3_bias_v:@D
6assignvariableop_69_adam_batch_normalization_5_gamma_v:@C
5assignvariableop_70_adam_batch_normalization_5_beta_v:@E
*assignvariableop_71_adam_conv2d_4_kernel_v:@7
(assignvariableop_72_adam_conv2d_4_bias_v:	E
6assignvariableop_73_adam_batch_normalization_6_gamma_v:	D
5assignvariableop_74_adam_batch_normalization_6_beta_v:	F
*assignvariableop_75_adam_conv2d_5_kernel_v:7
(assignvariableop_76_adam_conv2d_5_bias_v:	E
6assignvariableop_77_adam_batch_normalization_7_gamma_v:	D
5assignvariableop_78_adam_batch_normalization_7_beta_v:	=
)assignvariableop_79_adam_dense_2_kernel_v:
5
'assignvariableop_80_adam_dense_2_bias_v:;
)assignvariableop_81_adam_dense_3_kernel_v:5
'assignvariableop_82_adam_dense_3_bias_v:
identity_84¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_9¬-
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*Ò,
valueÈ,BÅ,TB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*½
value³B°TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Å
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*b
dtypesX
V2T	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_4_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_4_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_4_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_4_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_4_moving_stddevIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_5AssignVariableOp4assignvariableop_5_batch_normalization_4_renorm_meanIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_6AssignVariableOp6assignvariableop_6_batch_normalization_4_renorm_stddevIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp"assignvariableop_7_conv2d_3_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp assignvariableop_8_conv2d_3_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_5_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_5_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_5_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_5_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_13AssignVariableOp7assignvariableop_13_batch_normalization_5_moving_stddevIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_14AssignVariableOp5assignvariableop_14_batch_normalization_5_renorm_meanIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_15AssignVariableOp7assignvariableop_15_batch_normalization_5_renorm_stddevIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp#assignvariableop_16_conv2d_4_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp!assignvariableop_17_conv2d_4_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_18AssignVariableOp/assignvariableop_18_batch_normalization_6_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp.assignvariableop_19_batch_normalization_6_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_20AssignVariableOp5assignvariableop_20_batch_normalization_6_moving_meanIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_21AssignVariableOp9assignvariableop_21_batch_normalization_6_moving_varianceIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_22AssignVariableOp7assignvariableop_22_batch_normalization_6_moving_stddevIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_23AssignVariableOp5assignvariableop_23_batch_normalization_6_renorm_meanIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_24AssignVariableOp7assignvariableop_24_batch_normalization_6_renorm_stddevIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp#assignvariableop_25_conv2d_5_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp!assignvariableop_26_conv2d_5_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_7_gammaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp.assignvariableop_28_batch_normalization_7_betaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_29AssignVariableOp5assignvariableop_29_batch_normalization_7_moving_meanIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_30AssignVariableOp9assignvariableop_30_batch_normalization_7_moving_varianceIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_31AssignVariableOp7assignvariableop_31_batch_normalization_7_moving_stddevIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_32AssignVariableOp5assignvariableop_32_batch_normalization_7_renorm_meanIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_33AssignVariableOp7assignvariableop_33_batch_normalization_7_renorm_stddevIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp"assignvariableop_34_dense_2_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_2_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp"assignvariableop_36_dense_3_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp assignvariableop_37_dense_3_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_38AssignVariableOpassignvariableop_38_adam_iterIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOpassignvariableop_39_adam_beta_1Identity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOpassignvariableop_40_adam_beta_2Identity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOpassignvariableop_41_adam_decayIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_learning_rateIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOpassignvariableop_43_total_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOpassignvariableop_44_count_1Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOpassignvariableop_45_totalIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_countIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_47AssignVariableOp6assignvariableop_47_adam_batch_normalization_4_gamma_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_48AssignVariableOp5assignvariableop_48_adam_batch_normalization_4_beta_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp*assignvariableop_49_adam_conv2d_3_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOp(assignvariableop_50_adam_conv2d_3_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_51AssignVariableOp6assignvariableop_51_adam_batch_normalization_5_gamma_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_52AssignVariableOp5assignvariableop_52_adam_batch_normalization_5_beta_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOp*assignvariableop_53_adam_conv2d_4_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_conv2d_4_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_55AssignVariableOp6assignvariableop_55_adam_batch_normalization_6_gamma_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_56AssignVariableOp5assignvariableop_56_adam_batch_normalization_6_beta_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_conv2d_5_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_conv2d_5_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_59AssignVariableOp6assignvariableop_59_adam_batch_normalization_7_gamma_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_60AssignVariableOp5assignvariableop_60_adam_batch_normalization_7_beta_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_dense_2_kernel_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp'assignvariableop_62_adam_dense_2_bias_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_3_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_3_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_65AssignVariableOp6assignvariableop_65_adam_batch_normalization_4_gamma_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_66AssignVariableOp5assignvariableop_66_adam_batch_normalization_4_beta_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_conv2d_3_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_conv2d_3_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_69AssignVariableOp6assignvariableop_69_adam_batch_normalization_5_gamma_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adam_batch_normalization_5_beta_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_conv2d_4_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_conv2d_4_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_73AssignVariableOp6assignvariableop_73_adam_batch_normalization_6_gamma_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_74AssignVariableOp5assignvariableop_74_adam_batch_normalization_6_beta_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_75AssignVariableOp*assignvariableop_75_adam_conv2d_5_kernel_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_76AssignVariableOp(assignvariableop_76_adam_conv2d_5_bias_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_7_gamma_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_7_beta_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_79AssignVariableOp)assignvariableop_79_adam_dense_2_kernel_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_dense_2_bias_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp)assignvariableop_81_adam_dense_3_kernel_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp'assignvariableop_82_adam_dense_3_bias_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ñ
Identity_83Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_84IdentityIdentity_83:output:0^NoOp_1*
T0*
_output_shapes
: Þ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_84Identity_84:output:0*½
_input_shapes«
¨: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ð
¯
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73047

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿAA: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
 
_user_specified_nameinputs
ÝP
¾
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71320

inputs-
maximum_readvariableop_resource:@)
sub_readvariableop_resource:@)
mul_readvariableop_resource:@+
add_1_readvariableop_resource:@7
)assignmovingavg_2_readvariableop_resource:@7
)assignmovingavg_3_readvariableop_resource:@%
assignnewvalue_resource:@

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:@¡
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@w
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:@*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:]
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
:@:
SqrtSqrtadd:z:0*
T0*
_output_shapes
:@M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: r
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype0c
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:@N
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:@j
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0e
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:@O
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:@i
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:@[

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:@N

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:@Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<v
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:@*
dtype0|
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:@x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:@µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0P

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:@\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<|
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:@Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0t

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@}

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:@J
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:@L
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:@j
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype0^
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@l
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:@*
dtype0b
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:@*
dtype0\
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:@\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:@*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:@~
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Z
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:@>
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:@\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:@*
dtype0w
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:@~
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:@´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:@*
dtype0g
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:N
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:@<
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:@
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@W
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:@}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@Y
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@~

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@È
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Q
Å
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71463

inputs.
maximum_readvariableop_resource:	*
sub_readvariableop_resource:	*
mul_readvariableop_resource:	,
add_1_readvariableop_resource:	8
)assignmovingavg_2_readvariableop_resource:	8
)assignmovingavg_3_readvariableop_resource:	&
assignnewvalue_resource:	

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(m
moments/StopGradientStopGradientmoments/mean:output:0*
T0*'
_output_shapes
:¢
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          §
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*'
_output_shapes
:*
	keep_dims(p
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 v
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:^
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes	
:;
SqrtSqrtadd:z:0*
T0*
_output_shapes	
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: s
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0d
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes	
:O
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes	
:k
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0f
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes	
:P
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes	
:j
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes	
:\

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes	
:O

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes	
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<w
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes	
:*
dtype0}
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0Q

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes	
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<}
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0u

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:~

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes	
:K
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes	
:M
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes	
:k
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0_
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:m
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes	
:*
dtype0c
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:o
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes	
:*
dtype0]
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes	
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:[
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes	
:?
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes	
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes	
:*
dtype0x
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes	
:
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes	
:*
dtype0h
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:O
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes	
:=
ReluRelu	sub_1:z:0*
T0*
_output_shapes	
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:X
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes	
:~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Z
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÝP
¾
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71177

inputs-
maximum_readvariableop_resource:)
sub_readvariableop_resource:)
mul_readvariableop_resource:+
add_1_readvariableop_resource:7
)assignmovingavg_2_readvariableop_resource:7
)assignmovingavg_3_readvariableop_resource:%
assignnewvalue_resource:

identity_6¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢AssignMovingAvg_2¢ AssignMovingAvg_2/ReadVariableOp¢AssignMovingAvg_3¢ AssignMovingAvg_3/ReadVariableOp¢AssignNewValue¢Maximum/ReadVariableOp¢ReadVariableOp¢add_1/ReadVariableOp¢mul/ReadVariableOp¢mul_1/ReadVariableOp¢mul_2/ReadVariableOp¢sub/ReadVariableOps
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/StopGradientStopGradientmoments/mean:output:0*
T0*&
_output_shapes
:¡
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿw
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ¦
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:]
addAddV2moments/Squeeze_1:output:0add/y:output:0*
T0*
_output_shapes
::
SqrtSqrtadd:z:0*
T0*
_output_shapes
:M
Sqrt_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *o:B
Sqrt_1SqrtSqrt_1/x:output:0*
T0*
_output_shapes
: r
Maximum/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype0c
MaximumMaximumMaximum/ReadVariableOp:value:0
Sqrt_1:y:0*
T0*
_output_shapes
:N
truedivRealDivSqrt:y:0Maximum:z:0*
T0*
_output_shapes
:j
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0e
subSubmoments/Squeeze:output:0sub/ReadVariableOp:value:0*
T0*
_output_shapes
:O
	truediv_1RealDivsub:z:0Maximum:z:0*
T0*
_output_shapes
:i
IdentityIdentitymoments/Squeeze:output:0^truediv
^truediv_1*
T0*
_output_shapes
:[

Identity_1IdentitySqrt:y:0^truediv
^truediv_1*
T0*
_output_shapes
:N

Identity_2IdentityIdentity:output:0*
T0*
_output_shapes
:Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<v
AssignMovingAvg/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
:*
dtype0|
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0Identity_2:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:µ
AssignMovingAvgAssignSubVariableOpsub_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp^sub/ReadVariableOp*
_output_shapes
 *
dtype0P

Identity_3IdentityIdentity_1:output:0*
T0*
_output_shapes
:\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<|
 AssignMovingAvg_1/ReadVariableOpReadVariableOpmaximum_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0Identity_3:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Ã
AssignMovingAvg_1AssignSubVariableOpmaximum_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp^Maximum/ReadVariableOp*
_output_shapes
 *
dtype0t

Identity_4IdentityIdentity:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:}

Identity_5Identitymoments/Squeeze_1:output:0^AssignMovingAvg^AssignMovingAvg_1*
T0*
_output_shapes
:J
renorm_rStopGradienttruediv:z:0*
T0*
_output_shapes
:L
renorm_dStopGradienttruediv_1:z:0*
T0*
_output_shapes
:j
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype0^
mulMulrenorm_r:output:0mul/ReadVariableOp:value:0*
T0*
_output_shapes
:l
mul_1/ReadVariableOpReadVariableOpmul_readvariableop_resource*
_output_shapes
:*
dtype0b
mul_1Mulrenorm_d:output:0mul_1/ReadVariableOp:value:0*
T0*
_output_shapes
:n
add_1/ReadVariableOpReadVariableOpadd_1_readvariableop_resource*
_output_shapes
:*
dtype0\
add_1AddV2	mul_1:z:0add_1/ReadVariableOp:value:0*
T0*
_output_shapes
:\
AssignMovingAvg_2/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_2/ReadVariableOpReadVariableOp)assignmovingavg_2_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_2/subSub(AssignMovingAvg_2/ReadVariableOp:value:0Identity_4:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_2/mulMulAssignMovingAvg_2/sub:z:0 AssignMovingAvg_2/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_2AssignSubVariableOp)assignmovingavg_2_readvariableop_resourceAssignMovingAvg_2/mul:z:0!^AssignMovingAvg_2/ReadVariableOp*
_output_shapes
 *
dtype0L
add_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Z
add_2AddV2Identity_5:output:0add_2/y:output:0*
T0*
_output_shapes
:>
Sqrt_2Sqrt	add_2:z:0*
T0*
_output_shapes
:\
AssignMovingAvg_3/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_3/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource*
_output_shapes
:*
dtype0w
AssignMovingAvg_3/subSub(AssignMovingAvg_3/ReadVariableOp:value:0
Sqrt_2:y:0*
T0*
_output_shapes
:~
AssignMovingAvg_3/mulMulAssignMovingAvg_3/sub:z:0 AssignMovingAvg_3/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_3AssignSubVariableOp)assignmovingavg_3_readvariableop_resourceAssignMovingAvg_3/mul:z:0!^AssignMovingAvg_3/ReadVariableOp*
_output_shapes
 *
dtype0
ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype0
mul_2/ReadVariableOpReadVariableOp)assignmovingavg_3_readvariableop_resource^AssignMovingAvg_3*
_output_shapes
:*
dtype0g
mul_2MulReadVariableOp:value:0mul_2/ReadVariableOp:value:0*
T0*
_output_shapes
:L
sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:N
sub_1Sub	mul_2:z:0sub_1/y:output:0*
T0*
_output_shapes
:<
ReluRelu	sub_1:z:0*
T0*
_output_shapes
:
AssignNewValueAssignVariableOpassignnewvalue_resourceRelu:activations:0*
_output_shapes
 *
dtype0*
validate_shape(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:W
batchnorm/mulMulbatchnorm/Rsqrt:y:0mul:z:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:Y
batchnorm/subSub	add_1:z:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ~

Identity_6Identitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^AssignMovingAvg_2!^AssignMovingAvg_2/ReadVariableOp^AssignMovingAvg_3!^AssignMovingAvg_3/ReadVariableOp^AssignNewValue^Maximum/ReadVariableOp^ReadVariableOp^add_1/ReadVariableOp^mul/ReadVariableOp^mul_1/ReadVariableOp^mul_2/ReadVariableOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_6Identity_6:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_2AssignMovingAvg_22D
 AssignMovingAvg_2/ReadVariableOp AssignMovingAvg_2/ReadVariableOp2&
AssignMovingAvg_3AssignMovingAvg_32D
 AssignMovingAvg_3/ReadVariableOp AssignMovingAvg_3/ReadVariableOp2 
AssignNewValueAssignNewValue20
Maximum/ReadVariableOpMaximum/ReadVariableOp2 
ReadVariableOpReadVariableOp2,
add_1/ReadVariableOpadd_1/ReadVariableOp2(
mul/ReadVariableOpmul/ReadVariableOp2,
mul_1/ReadVariableOpmul_1/ReadVariableOp2,
mul_2/ReadVariableOpmul_2/ReadVariableOp2(
sub/ReadVariableOpsub/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
õ
,__inference_sequential_1_layer_call_fn_72551

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:#
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:@

unknown_12:@

unknown_13:@

unknown_14:@%

unknown_15:@

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	

unknown_23:	&

unknown_24:

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:	

unknown_30:	

unknown_31:	

unknown_32:	

unknown_33:


unknown_34:

unknown_35:

unknown_36:
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36*2
Tin+
)2'*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	#$%&*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_72026o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*|
_input_shapesk
i:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
K
/__inference_max_pooling2d_4_layer_call_fn_73308

inputs
identityØ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ê
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
Ä
¯
#__inference_signature_wrapper_72413
input_2
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3:@
	unknown_4:@
	unknown_5:@
	unknown_6:@
	unknown_7:@
	unknown_8:@$
	unknown_9:@

unknown_10:	

unknown_11:	

unknown_12:	

unknown_13:	

unknown_14:	&

unknown_15:

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:


unknown_22:

unknown_23:

unknown_24:
identity¢StatefulPartitionedCallý
StatefulPartitionedCallStatefulPartitionedCallinput_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_71063o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
ïC
æ
G__inference_sequential_1_layer_call_and_return_conditional_losses_71763

inputs)
batch_normalization_4_71630:)
batch_normalization_4_71632:)
batch_normalization_4_71634:)
batch_normalization_4_71636:(
conv2d_3_71651:@
conv2d_3_71653:@)
batch_normalization_5_71657:@)
batch_normalization_5_71659:@)
batch_normalization_5_71661:@)
batch_normalization_5_71663:@)
conv2d_4_71678:@
conv2d_4_71680:	*
batch_normalization_6_71684:	*
batch_normalization_6_71686:	*
batch_normalization_6_71688:	*
batch_normalization_6_71690:	*
conv2d_5_71705:
conv2d_5_71707:	*
batch_normalization_7_71711:	*
batch_normalization_7_71713:	*
batch_normalization_7_71715:	*
batch_normalization_7_71717:	!
dense_2_71740:

dense_2_71742:
dense_3_71757:
dense_3_71759:
identity¢-batch_normalization_4/StatefulPartitionedCall¢-batch_normalization_5/StatefulPartitionedCall¢-batch_normalization_6/StatefulPartitionedCall¢-batch_normalization_7/StatefulPartitionedCall¢ conv2d_3/StatefulPartitionedCall¢ conv2d_4/StatefulPartitionedCall¢ conv2d_5/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallé
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_4_71630batch_normalization_4_71632batch_normalization_4_71634batch_normalization_4_71636*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_71087§
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0conv2d_3_71651conv2d_3_71653*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_71650ò
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_71203
-batch_normalization_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0batch_normalization_5_71657batch_normalization_5_71659batch_normalization_5_71661batch_normalization_5_71663*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_71230¨
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_5/StatefulPartitionedCall:output:0conv2d_4_71678conv2d_4_71680*
Tin
2*
Tout
2*
_collective_manager_ids
 *2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_71677ñ
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_71346
-batch_normalization_6/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0batch_normalization_6_71684batch_normalization_6_71686batch_normalization_6_71688batch_normalization_6_71690*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_71373¦
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_6/StatefulPartitionedCall:output:0conv2d_5_71705conv2d_5_71707*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_71704ñ
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_71489
-batch_normalization_7/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_5/PartitionedCall:output:0batch_normalization_7_71711batch_normalization_7_71713batch_normalization_7_71715batch_normalization_7_71717*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_71516ë
flatten_1/PartitionedCallPartitionedCall6batch_normalization_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_71726
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_71740dense_2_71742*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_71739
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_71757dense_3_71759*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_71756w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp.^batch_normalization_4/StatefulPartitionedCall.^batch_normalization_5/StatefulPartitionedCall.^batch_normalization_6/StatefulPartitionedCall.^batch_normalization_7/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2^
-batch_normalization_5/StatefulPartitionedCall-batch_normalization_5/StatefulPartitionedCall2^
-batch_normalization_6/StatefulPartitionedCall-batch_normalization_6/StatefulPartitionedCall2^
-batch_normalization_7/StatefulPartitionedCall-batch_normalization_7/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
Ñ
 __inference__wrapped_model_71063
input_2R
Dsequential_1_batch_normalization_4_batchnorm_readvariableop_resource:V
Hsequential_1_batch_normalization_4_batchnorm_mul_readvariableop_resource:T
Fsequential_1_batch_normalization_4_batchnorm_readvariableop_1_resource:T
Fsequential_1_batch_normalization_4_batchnorm_readvariableop_2_resource:N
4sequential_1_conv2d_3_conv2d_readvariableop_resource:@C
5sequential_1_conv2d_3_biasadd_readvariableop_resource:@R
Dsequential_1_batch_normalization_5_batchnorm_readvariableop_resource:@V
Hsequential_1_batch_normalization_5_batchnorm_mul_readvariableop_resource:@T
Fsequential_1_batch_normalization_5_batchnorm_readvariableop_1_resource:@T
Fsequential_1_batch_normalization_5_batchnorm_readvariableop_2_resource:@O
4sequential_1_conv2d_4_conv2d_readvariableop_resource:@D
5sequential_1_conv2d_4_biasadd_readvariableop_resource:	S
Dsequential_1_batch_normalization_6_batchnorm_readvariableop_resource:	W
Hsequential_1_batch_normalization_6_batchnorm_mul_readvariableop_resource:	U
Fsequential_1_batch_normalization_6_batchnorm_readvariableop_1_resource:	U
Fsequential_1_batch_normalization_6_batchnorm_readvariableop_2_resource:	P
4sequential_1_conv2d_5_conv2d_readvariableop_resource:D
5sequential_1_conv2d_5_biasadd_readvariableop_resource:	S
Dsequential_1_batch_normalization_7_batchnorm_readvariableop_resource:	W
Hsequential_1_batch_normalization_7_batchnorm_mul_readvariableop_resource:	U
Fsequential_1_batch_normalization_7_batchnorm_readvariableop_1_resource:	U
Fsequential_1_batch_normalization_7_batchnorm_readvariableop_2_resource:	G
3sequential_1_dense_2_matmul_readvariableop_resource:
B
4sequential_1_dense_2_biasadd_readvariableop_resource:E
3sequential_1_dense_3_matmul_readvariableop_resource:B
4sequential_1_dense_3_biasadd_readvariableop_resource:
identity¢;sequential_1/batch_normalization_4/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_5/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_6/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOp¢;sequential_1/batch_normalization_7/batchnorm/ReadVariableOp¢=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_1¢=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_2¢?sequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOp¢,sequential_1/conv2d_3/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_3/Conv2D/ReadVariableOp¢,sequential_1/conv2d_4/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_4/Conv2D/ReadVariableOp¢,sequential_1/conv2d_5/BiasAdd/ReadVariableOp¢+sequential_1/conv2d_5/Conv2D/ReadVariableOp¢+sequential_1/dense_2/BiasAdd/ReadVariableOp¢*sequential_1/dense_2/MatMul/ReadVariableOp¢+sequential_1/dense_3/BiasAdd/ReadVariableOp¢*sequential_1/dense_3/MatMul/ReadVariableOp¼
;sequential_1/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0w
2sequential_1/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:à
0sequential_1/batch_normalization_4/batchnorm/addAddV2Csequential_1/batch_normalization_4/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:
2sequential_1/batch_normalization_4/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:Ä
?sequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Ý
0sequential_1/batch_normalization_4/batchnorm/mulMul6sequential_1/batch_normalization_4/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:´
2sequential_1/batch_normalization_4/batchnorm/mul_1Mulinput_24sequential_1/batch_normalization_4/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Û
2sequential_1/batch_normalization_4/batchnorm/mul_2MulEsequential_1/batch_normalization_4/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:À
=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Û
0sequential_1/batch_normalization_4/batchnorm/subSubEsequential_1/batch_normalization_4/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:å
2sequential_1/batch_normalization_4/batchnorm/add_1AddV26sequential_1/batch_normalization_4/batchnorm/mul_1:z:04sequential_1/batch_normalization_4/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0÷
sequential_1/conv2d_3/Conv2DConv2D6sequential_1/batch_normalization_4/batchnorm/add_1:z:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides

,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Á
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@È
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
¼
;sequential_1/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0w
2sequential_1/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:à
0sequential_1/batch_normalization_5/batchnorm/addAddV2Csequential_1/batch_normalization_5/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:@
2sequential_1/batch_normalization_5/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:@Ä
?sequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0Ý
0sequential_1/batch_normalization_5/batchnorm/mulMul6sequential_1/batch_normalization_5/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@Ú
2sequential_1/batch_normalization_5/batchnorm/mul_1Mul-sequential_1/max_pooling2d_3/MaxPool:output:04sequential_1/batch_normalization_5/batchnorm/mul:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype0Û
2sequential_1/batch_normalization_5/batchnorm/mul_2MulEsequential_1/batch_normalization_5/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:@À
=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype0Û
0sequential_1/batch_normalization_5/batchnorm/subSubEsequential_1/batch_normalization_5/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@å
2sequential_1/batch_normalization_5/batchnorm/add_1AddV26sequential_1/batch_normalization_5/batchnorm/mul_1:z:04sequential_1/batch_normalization_5/batchnorm/sub:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0ø
sequential_1/conv2d_4/Conv2DConv2D6sequential_1/batch_normalization_5/batchnorm/add_1:z:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides

,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Â
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿ
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*2
_output_shapes 
:ÿÿÿÿÿÿÿÿÿÇ
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
ksize
*
paddingVALID*
strides
½
;sequential_1/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0w
2sequential_1/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:á
0sequential_1/batch_normalization_6/batchnorm/addAddV2Csequential_1/batch_normalization_6/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
2sequential_1/batch_normalization_6/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes	
:Å
?sequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Þ
0sequential_1/batch_normalization_6/batchnorm/mulMul6sequential_1/batch_normalization_6/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ù
2sequential_1/batch_normalization_6/batchnorm/mul_1Mul-sequential_1/max_pooling2d_4/MaxPool:output:04sequential_1/batch_normalization_6/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAÁ
=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ü
2sequential_1/batch_normalization_6/batchnorm/mul_2MulEsequential_1/batch_normalization_6/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes	
:Á
=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Ü
0sequential_1/batch_normalization_6/batchnorm/subSubEsequential_1/batch_normalization_6/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ä
2sequential_1/batch_normalization_6/batchnorm/add_1AddV26sequential_1/batch_normalization_6/batchnorm/mul_1:z:04sequential_1/batch_normalization_6/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAª
+sequential_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_5_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0ö
sequential_1/conv2d_5/Conv2DConv2D6sequential_1/batch_normalization_6/batchnorm/add_1:z:03sequential_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA*
paddingSAME*
strides

,sequential_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0À
sequential_1/conv2d_5/BiasAddBiasAdd%sequential_1/conv2d_5/Conv2D:output:04sequential_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAA
sequential_1/conv2d_5/ReluRelu&sequential_1/conv2d_5/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿAAÇ
$sequential_1/max_pooling2d_5/MaxPoolMaxPool(sequential_1/conv2d_5/Relu:activations:0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
ksize
*
paddingVALID*
strides
½
;sequential_1/batch_normalization_7/batchnorm/ReadVariableOpReadVariableOpDsequential_1_batch_normalization_7_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0w
2sequential_1/batch_normalization_7/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:á
0sequential_1/batch_normalization_7/batchnorm/addAddV2Csequential_1/batch_normalization_7/batchnorm/ReadVariableOp:value:0;sequential_1/batch_normalization_7/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
2sequential_1/batch_normalization_7/batchnorm/RsqrtRsqrt4sequential_1/batch_normalization_7/batchnorm/add:z:0*
T0*
_output_shapes	
:Å
?sequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_1_batch_normalization_7_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Þ
0sequential_1/batch_normalization_7/batchnorm/mulMul6sequential_1/batch_normalization_7/batchnorm/Rsqrt:y:0Gsequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ù
2sequential_1/batch_normalization_7/batchnorm/mul_1Mul-sequential_1/max_pooling2d_5/MaxPool:output:04sequential_1/batch_normalization_7/batchnorm/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  Á
=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_1_batch_normalization_7_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ü
2sequential_1/batch_normalization_7/batchnorm/mul_2MulEsequential_1/batch_normalization_7/batchnorm/ReadVariableOp_1:value:04sequential_1/batch_normalization_7/batchnorm/mul:z:0*
T0*
_output_shapes	
:Á
=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_1_batch_normalization_7_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Ü
0sequential_1/batch_normalization_7/batchnorm/subSubEsequential_1/batch_normalization_7/batchnorm/ReadVariableOp_2:value:06sequential_1/batch_normalization_7/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ä
2sequential_1/batch_normalization_7/batchnorm/add_1AddV26sequential_1/batch_normalization_7/batchnorm/mul_1:z:04sequential_1/batch_normalization_7/batchnorm/sub:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¼
sequential_1/flatten_1/ReshapeReshape6sequential_1/batch_normalization_7/batchnorm/add_1:z:0%sequential_1/flatten_1/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0´
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0´
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_1/dense_3/SigmoidSigmoid%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
IdentityIdentity sequential_1/dense_3/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp<^sequential_1/batch_normalization_4/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_5/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_6/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOp<^sequential_1/batch_normalization_7/batchnorm/ReadVariableOp>^sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_1>^sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_2@^sequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOp-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp-^sequential_1/conv2d_5/BiasAdd/ReadVariableOp,^sequential_1/conv2d_5/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2z
;sequential_1/batch_normalization_4/batchnorm/ReadVariableOp;sequential_1/batch_normalization_4/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_4/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_4/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_5/batchnorm/ReadVariableOp;sequential_1/batch_normalization_5/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_5/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_5/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_6/batchnorm/ReadVariableOp;sequential_1/batch_normalization_6/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_6/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_6/batchnorm/mul/ReadVariableOp2z
;sequential_1/batch_normalization_7/batchnorm/ReadVariableOp;sequential_1/batch_normalization_7/batchnorm/ReadVariableOp2~
=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_1=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_12~
=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_2=sequential_1/batch_normalization_7/batchnorm/ReadVariableOp_22
?sequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOp?sequential_1/batch_normalization_7/batchnorm/mul/ReadVariableOp2\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_5/BiasAdd/ReadVariableOp,sequential_1/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_5/Conv2D/ReadVariableOp+sequential_1/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_2
¡

õ
B__inference_dense_2_layer_call_and_return_conditional_losses_71739

inputs2
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
µ&
__inference__traced_save_73924
file_prefix:
6savev2_batch_normalization_4_gamma_read_readvariableop9
5savev2_batch_normalization_4_beta_read_readvariableop@
<savev2_batch_normalization_4_moving_mean_read_readvariableopD
@savev2_batch_normalization_4_moving_variance_read_readvariableopB
>savev2_batch_normalization_4_moving_stddev_read_readvariableop@
<savev2_batch_normalization_4_renorm_mean_read_readvariableopB
>savev2_batch_normalization_4_renorm_stddev_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop:
6savev2_batch_normalization_5_gamma_read_readvariableop9
5savev2_batch_normalization_5_beta_read_readvariableop@
<savev2_batch_normalization_5_moving_mean_read_readvariableopD
@savev2_batch_normalization_5_moving_variance_read_readvariableopB
>savev2_batch_normalization_5_moving_stddev_read_readvariableop@
<savev2_batch_normalization_5_renorm_mean_read_readvariableopB
>savev2_batch_normalization_5_renorm_stddev_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop:
6savev2_batch_normalization_6_gamma_read_readvariableop9
5savev2_batch_normalization_6_beta_read_readvariableop@
<savev2_batch_normalization_6_moving_mean_read_readvariableopD
@savev2_batch_normalization_6_moving_variance_read_readvariableopB
>savev2_batch_normalization_6_moving_stddev_read_readvariableop@
<savev2_batch_normalization_6_renorm_mean_read_readvariableopB
>savev2_batch_normalization_6_renorm_stddev_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop:
6savev2_batch_normalization_7_gamma_read_readvariableop9
5savev2_batch_normalization_7_beta_read_readvariableop@
<savev2_batch_normalization_7_moving_mean_read_readvariableopD
@savev2_batch_normalization_7_moving_variance_read_readvariableopB
>savev2_batch_normalization_7_moving_stddev_read_readvariableop@
<savev2_batch_normalization_7_renorm_mean_read_readvariableopB
>savev2_batch_normalization_7_renorm_stddev_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_m_read_readvariableop5
1savev2_adam_conv2d_4_kernel_m_read_readvariableop3
/savev2_adam_conv2d_4_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_m_read_readvariableop5
1savev2_adam_conv2d_5_kernel_m_read_readvariableop3
/savev2_adam_conv2d_5_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_4_beta_v_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_5_beta_v_read_readvariableop5
1savev2_adam_conv2d_4_kernel_v_read_readvariableop3
/savev2_adam_conv2d_4_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_6_beta_v_read_readvariableop5
1savev2_adam_conv2d_5_kernel_v_read_readvariableop3
/savev2_adam_conv2d_5_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_7_beta_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ©-
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*Ò,
valueÈ,BÅ,TB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-0/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-2/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-4/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/moving_stddev/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/renorm_mean/.ATTRIBUTES/VARIABLE_VALUEB=layer_with_weights-6/renorm_stddev/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:T*
dtype0*½
value³B°TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B %
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_4_gamma_read_readvariableop5savev2_batch_normalization_4_beta_read_readvariableop<savev2_batch_normalization_4_moving_mean_read_readvariableop@savev2_batch_normalization_4_moving_variance_read_readvariableop>savev2_batch_normalization_4_moving_stddev_read_readvariableop<savev2_batch_normalization_4_renorm_mean_read_readvariableop>savev2_batch_normalization_4_renorm_stddev_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop6savev2_batch_normalization_5_gamma_read_readvariableop5savev2_batch_normalization_5_beta_read_readvariableop<savev2_batch_normalization_5_moving_mean_read_readvariableop@savev2_batch_normalization_5_moving_variance_read_readvariableop>savev2_batch_normalization_5_moving_stddev_read_readvariableop<savev2_batch_normalization_5_renorm_mean_read_readvariableop>savev2_batch_normalization_5_renorm_stddev_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop6savev2_batch_normalization_6_gamma_read_readvariableop5savev2_batch_normalization_6_beta_read_readvariableop<savev2_batch_normalization_6_moving_mean_read_readvariableop@savev2_batch_normalization_6_moving_variance_read_readvariableop>savev2_batch_normalization_6_moving_stddev_read_readvariableop<savev2_batch_normalization_6_renorm_mean_read_readvariableop>savev2_batch_normalization_6_renorm_stddev_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop6savev2_batch_normalization_7_gamma_read_readvariableop5savev2_batch_normalization_7_beta_read_readvariableop<savev2_batch_normalization_7_moving_mean_read_readvariableop@savev2_batch_normalization_7_moving_variance_read_readvariableop>savev2_batch_normalization_7_moving_stddev_read_readvariableop<savev2_batch_normalization_7_renorm_mean_read_readvariableop>savev2_batch_normalization_7_renorm_stddev_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop=savev2_adam_batch_normalization_4_gamma_m_read_readvariableop<savev2_adam_batch_normalization_4_beta_m_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop=savev2_adam_batch_normalization_5_gamma_m_read_readvariableop<savev2_adam_batch_normalization_5_beta_m_read_readvariableop1savev2_adam_conv2d_4_kernel_m_read_readvariableop/savev2_adam_conv2d_4_bias_m_read_readvariableop=savev2_adam_batch_normalization_6_gamma_m_read_readvariableop<savev2_adam_batch_normalization_6_beta_m_read_readvariableop1savev2_adam_conv2d_5_kernel_m_read_readvariableop/savev2_adam_conv2d_5_bias_m_read_readvariableop=savev2_adam_batch_normalization_7_gamma_m_read_readvariableop<savev2_adam_batch_normalization_7_beta_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop=savev2_adam_batch_normalization_4_gamma_v_read_readvariableop<savev2_adam_batch_normalization_4_beta_v_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop=savev2_adam_batch_normalization_5_gamma_v_read_readvariableop<savev2_adam_batch_normalization_5_beta_v_read_readvariableop1savev2_adam_conv2d_4_kernel_v_read_readvariableop/savev2_adam_conv2d_4_bias_v_read_readvariableop=savev2_adam_batch_normalization_6_gamma_v_read_readvariableop<savev2_adam_batch_normalization_6_beta_v_read_readvariableop1savev2_adam_conv2d_5_kernel_v_read_readvariableop/savev2_adam_conv2d_5_bias_v_read_readvariableop=savev2_adam_batch_normalization_7_gamma_v_read_readvariableop<savev2_adam_batch_normalization_7_beta_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *b
dtypesX
V2T	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapes
: ::::::::@:@:@:@:@:@:@:@:@:@::::::::::::::::::
:::: : : : : : : : : :::@:@:@:@:@::::::::
::::::@:@:@:@:@::::::::
:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
::!"

_output_shapes	
::&#"
 
_output_shapes
:
: $

_output_shapes
::$% 

_output_shapes

:: &

_output_shapes
::'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: : 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:@: 3

_output_shapes
:@: 4

_output_shapes
:@: 5

_output_shapes
:@:-6)
'
_output_shapes
:@:!7

_output_shapes	
::!8

_output_shapes	
::!9

_output_shapes	
::.:*
(
_output_shapes
::!;

_output_shapes	
::!<

_output_shapes	
::!=

_output_shapes	
::&>"
 
_output_shapes
:
: ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
:: B

_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:@: E

_output_shapes
:@: F

_output_shapes
:@: G

_output_shapes
:@:-H)
'
_output_shapes
:@:!I

_output_shapes	
::!J

_output_shapes	
::!K

_output_shapes	
::.L*
(
_output_shapes
::!M

_output_shapes	
::!N

_output_shapes	
::!O

_output_shapes	
::&P"
 
_output_shapes
:
: Q

_output_shapes
::$R 

_output_shapes

:: S

_output_shapes
::T

_output_shapes
: "¿L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*´
serving_default 
E
input_2:
serving_default_input_2:0ÿÿÿÿÿÿÿÿÿ;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ï
ü
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
¶
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
renorm_clipping
axis
	gamma
 beta
!moving_mean
"moving_variance
#moving_stddev
$renorm_mean
%renorm_stddev"
_tf_keras_layer
Ý
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses

,kernel
-bias
 ._jit_compiled_convolution_op"
_tf_keras_layer
¥
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
¶
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses
;renorm_clipping
<axis
	=gamma
>beta
?moving_mean
@moving_variance
Amoving_stddev
Brenorm_mean
Crenorm_stddev"
_tf_keras_layer
Ý
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias
 L_jit_compiled_convolution_op"
_tf_keras_layer
¥
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
¶
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Yrenorm_clipping
Zaxis
	[gamma
\beta
]moving_mean
^moving_variance
_moving_stddev
`renorm_mean
arenorm_stddev"
_tf_keras_layer
Ý
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op"
_tf_keras_layer
¥
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
¶
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
wrenorm_clipping
xaxis
	ygamma
zbeta
{moving_mean
|moving_variance
}moving_stddev
~renorm_mean
renorm_stddev"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Ê
0
 1
!2
"3
#4
$5
%6
,7
-8
=9
>10
?11
@12
A13
B14
C15
J16
K17
[18
\19
]20
^21
_22
`23
a24
h25
i26
y27
z28
{29
|30
}31
~32
33
34
35
36
37"
trackable_list_wrapper
ª
0
 1
,2
-3
=4
>5
J6
K7
[8
\9
h10
i11
y12
z13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
î
trace_0
trace_1
trace_2
trace_32û
,__inference_sequential_1_layer_call_fn_71818
,__inference_sequential_1_layer_call_fn_72470
,__inference_sequential_1_layer_call_fn_72551
,__inference_sequential_1_layer_call_fn_72186À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Ú
trace_0
 trace_1
¡trace_2
¢trace_32ç
G__inference_sequential_1_layer_call_and_return_conditional_losses_72659
G__inference_sequential_1_layer_call_and_return_conditional_losses_72995
G__inference_sequential_1_layer_call_and_return_conditional_losses_72255
G__inference_sequential_1_layer_call_and_return_conditional_losses_72348À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 ztrace_0z trace_1z¡trace_2z¢trace_3
ËBÈ
 __inference__wrapped_model_71063input_2"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
È
	£iter
¤beta_1
¥beta_2

¦decay
§learning_ratem m,m-m=m>mJmKm[m\m hm¡im¢ym£zm¤	m¥	m¦	m§	m¨v© vª,v«-v¬=v­>v®Jv¯Kv°[v±\v²hv³iv´yvµzv¶	v·	v¸	v¹	vº"
	optimizer
-
¨serving_default"
signature_map
Q
0
 1
!2
"3
#4
$5
%6"
trackable_list_wrapper
.
0
 1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
©non_trainable_variables
ªlayers
«metrics
 ¬layer_regularization_losses
­layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
à
®trace_0
¯trace_12¥
5__inference_batch_normalization_4_layer_call_fn_73008
5__inference_batch_normalization_4_layer_call_fn_73027´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z®trace_0z¯trace_1

°trace_0
±trace_12Û
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73047
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73124´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 z°trace_0z±trace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'2batch_normalization_4/gamma
(:&2batch_normalization_4/beta
1:/ (2!batch_normalization_4/moving_mean
5:3 (2%batch_normalization_4/moving_variance
3:1 (2#batch_normalization_4/moving_stddev
1:/ (2!batch_normalization_4/renorm_mean
3:1 (2#batch_normalization_4/renorm_stddev
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
î
·trace_02Ï
(__inference_conv2d_3_layer_call_fn_73133¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0

¸trace_02ê
C__inference_conv2d_3_layer_call_and_return_conditional_losses_73144¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¸trace_0
):'@2conv2d_3/kernel
:@2conv2d_3/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¹non_trainable_variables
ºlayers
»metrics
 ¼layer_regularization_losses
½layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
õ
¾trace_02Ö
/__inference_max_pooling2d_3_layer_call_fn_73149¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0

¿trace_02ñ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_73154¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¿trace_0
Q
=0
>1
?2
@3
A4
B5
C6"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ànon_trainable_variables
Álayers
Âmetrics
 Ãlayer_regularization_losses
Älayer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
à
Åtrace_0
Ætrace_12¥
5__inference_batch_normalization_5_layer_call_fn_73167
5__inference_batch_normalization_5_layer_call_fn_73186´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÅtrace_0zÆtrace_1

Çtrace_0
Ètrace_12Û
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73206
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73283´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÇtrace_0zÈtrace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
):'@2batch_normalization_5/gamma
(:&@2batch_normalization_5/beta
1:/@ (2!batch_normalization_5/moving_mean
5:3@ (2%batch_normalization_5/moving_variance
3:1@ (2#batch_normalization_5/moving_stddev
1:/@ (2!batch_normalization_5/renorm_mean
3:1@ (2#batch_normalization_5/renorm_stddev
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Énon_trainable_variables
Êlayers
Ëmetrics
 Ìlayer_regularization_losses
Ílayer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
î
Îtrace_02Ï
(__inference_conv2d_4_layer_call_fn_73292¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÎtrace_0

Ïtrace_02ê
C__inference_conv2d_4_layer_call_and_return_conditional_losses_73303¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÏtrace_0
*:(@2conv2d_4/kernel
:2conv2d_4/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ðnon_trainable_variables
Ñlayers
Òmetrics
 Ólayer_regularization_losses
Ôlayer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
õ
Õtrace_02Ö
/__inference_max_pooling2d_4_layer_call_fn_73308¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÕtrace_0

Ötrace_02ñ
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_73313¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÖtrace_0
Q
[0
\1
]2
^3
_4
`5
a6"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
×non_trainable_variables
Ølayers
Ùmetrics
 Úlayer_regularization_losses
Ûlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
à
Ütrace_0
Ýtrace_12¥
5__inference_batch_normalization_6_layer_call_fn_73326
5__inference_batch_normalization_6_layer_call_fn_73345´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÜtrace_0zÝtrace_1

Þtrace_0
ßtrace_12Û
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73365
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73442´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zÞtrace_0zßtrace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_6/gamma
):'2batch_normalization_6/beta
2:0 (2!batch_normalization_6/moving_mean
6:4 (2%batch_normalization_6/moving_variance
4:2 (2#batch_normalization_6/moving_stddev
2:0 (2!batch_normalization_6/renorm_mean
4:2 (2#batch_normalization_6/renorm_stddev
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ànon_trainable_variables
álayers
âmetrics
 ãlayer_regularization_losses
älayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
î
åtrace_02Ï
(__inference_conv2d_5_layer_call_fn_73451¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zåtrace_0

ætrace_02ê
C__inference_conv2d_5_layer_call_and_return_conditional_losses_73462¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zætrace_0
+:)2conv2d_5/kernel
:2conv2d_5/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
çnon_trainable_variables
èlayers
émetrics
 êlayer_regularization_losses
ëlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
õ
ìtrace_02Ö
/__inference_max_pooling2d_5_layer_call_fn_73467¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zìtrace_0

ítrace_02ñ
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_73472¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zítrace_0
Q
y0
z1
{2
|3
}4
~5
6"
trackable_list_wrapper
.
y0
z1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
înon_trainable_variables
ïlayers
ðmetrics
 ñlayer_regularization_losses
òlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
à
ótrace_0
ôtrace_12¥
5__inference_batch_normalization_7_layer_call_fn_73485
5__inference_batch_normalization_7_layer_call_fn_73504´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zótrace_0zôtrace_1

õtrace_0
ötrace_12Û
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73524
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73601´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 zõtrace_0zötrace_1
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
*:(2batch_normalization_7/gamma
):'2batch_normalization_7/beta
2:0 (2!batch_normalization_7/moving_mean
6:4 (2%batch_normalization_7/moving_variance
4:2 (2#batch_normalization_7/moving_stddev
2:0 (2!batch_normalization_7/renorm_mean
4:2 (2#batch_normalization_7/renorm_stddev
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
÷non_trainable_variables
ølayers
ùmetrics
 úlayer_regularization_losses
ûlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ï
ütrace_02Ð
)__inference_flatten_1_layer_call_fn_73606¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zütrace_0

ýtrace_02ë
D__inference_flatten_1_layer_call_and_return_conditional_losses_73612¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zýtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
þnon_trainable_variables
ÿlayers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
í
trace_02Î
'__inference_dense_2_layer_call_fn_73621¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02é
B__inference_dense_2_layer_call_and_return_conditional_losses_73632¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
": 
2dense_2/kernel
:2dense_2/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
í
trace_02Î
'__inference_dense_3_layer_call_fn_73641¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02é
B__inference_dense_3_layer_call_and_return_conditional_losses_73652¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
 :2dense_3/kernel
:2dense_3/bias
¶
!0
"1
#2
$3
%4
?5
@6
A7
B8
C9
]10
^11
_12
`13
a14
{15
|16
}17
~18
19"
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÿBü
,__inference_sequential_1_layer_call_fn_71818input_2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_1_layer_call_fn_72470inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
þBû
,__inference_sequential_1_layer_call_fn_72551inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿBü
,__inference_sequential_1_layer_call_fn_72186input_2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_72659inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_72995inputs"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_72255input_2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
G__inference_sequential_1_layer_call_and_return_conditional_losses_72348input_2"À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ÊBÇ
#__inference_signature_wrapper_72413input_2"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
C
!0
"1
#2
$3
%4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
5__inference_batch_normalization_4_layer_call_fn_73008inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
5__inference_batch_normalization_4_layer_call_fn_73027inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73047inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73124inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_conv2d_3_layer_call_fn_73133inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_3_layer_call_and_return_conditional_losses_73144inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBà
/__inference_max_pooling2d_3_layer_call_fn_73149inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_73154inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
C
?0
@1
A2
B3
C4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
5__inference_batch_normalization_5_layer_call_fn_73167inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
5__inference_batch_normalization_5_layer_call_fn_73186inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73206inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73283inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_conv2d_4_layer_call_fn_73292inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_4_layer_call_and_return_conditional_losses_73303inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBà
/__inference_max_pooling2d_4_layer_call_fn_73308inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_73313inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
C
]0
^1
_2
`3
a4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
5__inference_batch_normalization_6_layer_call_fn_73326inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
5__inference_batch_normalization_6_layer_call_fn_73345inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73365inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73442inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
(__inference_conv2d_5_layer_call_fn_73451inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷Bô
C__inference_conv2d_5_layer_call_and_return_conditional_losses_73462inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ãBà
/__inference_max_pooling2d_5_layer_call_fn_73467inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þBû
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_73472inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
C
{0
|1
}2
~3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ûBø
5__inference_batch_normalization_7_layer_call_fn_73485inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ûBø
5__inference_batch_normalization_7_layer_call_fn_73504inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73524inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
B
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73601inputs"´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÝBÚ
)__inference_flatten_1_layer_call_fn_73606inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
øBõ
D__inference_flatten_1_layer_call_and_return_conditional_losses_73612inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_2_layer_call_fn_73621inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_2_layer_call_and_return_conditional_losses_73632inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_dense_3_layer_call_fn_73641inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_dense_3_layer_call_and_return_conditional_losses_73652inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
c
	variables
	keras_api

total

count

_fn_kwargs"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.:,2"Adam/batch_normalization_4/gamma/m
-:+2!Adam/batch_normalization_4/beta/m
.:,@2Adam/conv2d_3/kernel/m
 :@2Adam/conv2d_3/bias/m
.:,@2"Adam/batch_normalization_5/gamma/m
-:+@2!Adam/batch_normalization_5/beta/m
/:-@2Adam/conv2d_4/kernel/m
!:2Adam/conv2d_4/bias/m
/:-2"Adam/batch_normalization_6/gamma/m
.:,2!Adam/batch_normalization_6/beta/m
0:.2Adam/conv2d_5/kernel/m
!:2Adam/conv2d_5/bias/m
/:-2"Adam/batch_normalization_7/gamma/m
.:,2!Adam/batch_normalization_7/beta/m
':%
2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
%:#2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
.:,2"Adam/batch_normalization_4/gamma/v
-:+2!Adam/batch_normalization_4/beta/v
.:,@2Adam/conv2d_3/kernel/v
 :@2Adam/conv2d_3/bias/v
.:,@2"Adam/batch_normalization_5/gamma/v
-:+@2!Adam/batch_normalization_5/beta/v
/:-@2Adam/conv2d_4/kernel/v
!:2Adam/conv2d_4/bias/v
/:-2"Adam/batch_normalization_6/gamma/v
.:,2!Adam/batch_normalization_6/beta/v
0:.2Adam/conv2d_5/kernel/v
!:2Adam/conv2d_5/bias/v
/:-2"Adam/batch_normalization_7/gamma/v
.:,2!Adam/batch_normalization_7/beta/v
':%
2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
%:#2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v´
 __inference__wrapped_model_71063"! ,-@=?>JK^[]\hi|y{z:¢7
0¢-
+(
input_2ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿë
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73047"! M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 î
P__inference_batch_normalization_4_layer_call_and_return_conditional_losses_73124%$ !#"M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
5__inference_batch_normalization_4_layer_call_fn_73008"! M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÆ
5__inference_batch_normalization_4_layer_call_fn_73027%$ !#"M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73206@=?>M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 î
P__inference_batch_normalization_5_layer_call_and_return_conditional_losses_73283CB=>?A@M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ã
5__inference_batch_normalization_5_layer_call_fn_73167@=?>M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@Æ
5__inference_batch_normalization_5_layer_call_fn_73186CB=>?A@M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@í
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73365^[]\N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ð
P__inference_batch_normalization_6_layer_call_and_return_conditional_losses_73442a`[\]_^N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
5__inference_batch_normalization_6_layer_call_fn_73326^[]\N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
5__inference_batch_normalization_6_layer_call_fn_73345a`[\]_^N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73524|y{zN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ð
P__inference_batch_normalization_7_layer_call_and_return_conditional_losses_73601~yz{}|N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
5__inference_batch_normalization_7_layer_call_fn_73485|y{zN¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÈ
5__inference_batch_normalization_7_layer_call_fn_73504~yz{}|N¢K
D¢A
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ·
C__inference_conv2d_3_layer_call_and_return_conditional_losses_73144p,-9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_conv2d_3_layer_call_fn_73133c,-9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ
ª ""ÿÿÿÿÿÿÿÿÿ@¸
C__inference_conv2d_4_layer_call_and_return_conditional_losses_73303qJK9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "0¢-
&#
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_conv2d_4_layer_call_fn_73292dJK9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ@
ª "# ÿÿÿÿÿÿÿÿÿµ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_73462nhi8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿAA
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿAA
 
(__inference_conv2d_5_layer_call_fn_73451ahi8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿAA
ª "!ÿÿÿÿÿÿÿÿÿAA¦
B__inference_dense_2_layer_call_and_return_conditional_losses_73632`1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ~
'__inference_dense_2_layer_call_fn_73621S1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dense_3_layer_call_and_return_conditional_losses_73652^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dense_3_layer_call_fn_73641Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ«
D__inference_flatten_1_layer_call_and_return_conditional_losses_73612c8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ
 
)__inference_flatten_1_layer_call_fn_73606V8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "ÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_73154R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_3_layer_call_fn_73149R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_73313R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_4_layer_call_fn_73308R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_73472R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_5_layer_call_fn_73467R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ×
G__inference_sequential_1_layer_call_and_return_conditional_losses_72255"! ,-@=?>JK^[]\hi|y{zB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ã
G__inference_sequential_1_layer_call_and_return_conditional_losses_72348*%$ !#",-CB=>?A@JKa`[\]_^hi~yz{}|B¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ö
G__inference_sequential_1_layer_call_and_return_conditional_losses_72659"! ,-@=?>JK^[]\hi|y{zA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 â
G__inference_sequential_1_layer_call_and_return_conditional_losses_72995*%$ !#",-CB=>?A@JKa`[\]_^hi~yz{}|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ®
,__inference_sequential_1_layer_call_fn_71818~"! ,-@=?>JK^[]\hi|y{zB¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ»
,__inference_sequential_1_layer_call_fn_72186*%$ !#",-CB=>?A@JKa`[\]_^hi~yz{}|B¢?
8¢5
+(
input_2ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ­
,__inference_sequential_1_layer_call_fn_72470}"! ,-@=?>JK^[]\hi|y{zA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿº
,__inference_sequential_1_layer_call_fn_72551*%$ !#",-CB=>?A@JKa`[\]_^hi~yz{}|A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÂ
#__inference_signature_wrapper_72413"! ,-@=?>JK^[]\hi|y{zE¢B
¢ 
;ª8
6
input_2+(
input_2ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ