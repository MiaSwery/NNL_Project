??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
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
?
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
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
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
executor_typestring ??
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28؝
z
bl_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebl_2/kernel
s
bl_2/kernel/Read/ReadVariableOpReadVariableOpbl_2/kernel*&
_output_shapes
:*
dtype0
j
	bl_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bl_2/bias
c
bl_2/bias/Read/ReadVariableOpReadVariableOp	bl_2/bias*
_output_shapes
:*
dtype0
z
bl_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebl_4/kernel
s
bl_4/kernel/Read/ReadVariableOpReadVariableOpbl_4/kernel*&
_output_shapes
: *
dtype0
j
	bl_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bl_4/bias
c
bl_4/bias/Read/ReadVariableOpReadVariableOp	bl_4/bias*
_output_shapes
: *
dtype0
z
bl_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_namebl_6/kernel
s
bl_6/kernel/Read/ReadVariableOpReadVariableOpbl_6/kernel*&
_output_shapes
: @*
dtype0
j
	bl_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bl_6/bias
c
bl_6/bias/Read/ReadVariableOpReadVariableOp	bl_6/bias*
_output_shapes
:@*
dtype0
u
bb_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namebb_1/kernel
n
bb_1/kernel/Read/ReadVariableOpReadVariableOpbb_1/kernel*!
_output_shapes
:???*
dtype0
k
	bb_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	bb_1/bias
d
bb_1/bias/Read/ReadVariableOpReadVariableOp	bb_1/bias*
_output_shapes	
:?*
dtype0
s
bb_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namebb_2/kernel
l
bb_2/kernel/Read/ReadVariableOpReadVariableOpbb_2/kernel*
_output_shapes
:	?@*
dtype0
j
	bb_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bb_2/bias
c
bb_2/bias/Read/ReadVariableOpReadVariableOp	bb_2/bias*
_output_shapes
:@*
dtype0
u
cl_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namecl_1/kernel
n
cl_1/kernel/Read/ReadVariableOpReadVariableOpcl_1/kernel*!
_output_shapes
:???*
dtype0
k
	cl_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	cl_1/bias
d
cl_1/bias/Read/ReadVariableOpReadVariableOp	cl_1/bias*
_output_shapes	
:?*
dtype0
r
bb_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namebb_3/kernel
k
bb_3/kernel/Read/ReadVariableOpReadVariableOpbb_3/kernel*
_output_shapes

:@ *
dtype0
j
	bb_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bb_3/bias
c
bb_3/bias/Read/ReadVariableOpReadVariableOp	bb_3/bias*
_output_shapes
: *
dtype0
w
classi/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_nameclassi/kernel
p
!classi/kernel/Read/ReadVariableOpReadVariableOpclassi/kernel*
_output_shapes
:	?*
dtype0
n
classi/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameclassi/bias
g
classi/bias/Read/ReadVariableOpReadVariableOpclassi/bias*
_output_shapes
:*
dtype0
?
boundingbox/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *#
shared_nameboundingbox/kernel
y
&boundingbox/kernel/Read/ReadVariableOpReadVariableOpboundingbox/kernel*
_output_shapes

: *
dtype0
x
boundingbox/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameboundingbox/bias
q
$boundingbox/bias/Read/ReadVariableOpReadVariableOpboundingbox/bias*
_output_shapes
:*
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
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
?
Adam/bl_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/bl_2/kernel/m
?
&Adam/bl_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bl_2/kernel/m*&
_output_shapes
:*
dtype0
x
Adam/bl_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bl_2/bias/m
q
$Adam/bl_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/bl_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/bl_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/bl_4/kernel/m
?
&Adam/bl_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bl_4/kernel/m*&
_output_shapes
: *
dtype0
x
Adam/bl_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bl_4/bias/m
q
$Adam/bl_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/bl_4/bias/m*
_output_shapes
: *
dtype0
?
Adam/bl_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameAdam/bl_6/kernel/m
?
&Adam/bl_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bl_6/kernel/m*&
_output_shapes
: @*
dtype0
x
Adam/bl_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/bl_6/bias/m
q
$Adam/bl_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/bl_6/bias/m*
_output_shapes
:@*
dtype0
?
Adam/bb_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/bb_1/kernel/m
|
&Adam/bb_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bb_1/kernel/m*!
_output_shapes
:???*
dtype0
y
Adam/bb_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/bb_1/bias/m
r
$Adam/bb_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/bb_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/bb_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*#
shared_nameAdam/bb_2/kernel/m
z
&Adam/bb_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bb_2/kernel/m*
_output_shapes
:	?@*
dtype0
x
Adam/bb_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/bb_2/bias/m
q
$Adam/bb_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/bb_2/bias/m*
_output_shapes
:@*
dtype0
?
Adam/cl_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/cl_1/kernel/m
|
&Adam/cl_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/m*!
_output_shapes
:???*
dtype0
y
Adam/cl_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/cl_1/bias/m
r
$Adam/cl_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/bb_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *#
shared_nameAdam/bb_3/kernel/m
y
&Adam/bb_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/bb_3/kernel/m*
_output_shapes

:@ *
dtype0
x
Adam/bb_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bb_3/bias/m
q
$Adam/bb_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/bb_3/bias/m*
_output_shapes
: *
dtype0
?
Adam/classi/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/classi/kernel/m
~
(Adam/classi/kernel/m/Read/ReadVariableOpReadVariableOpAdam/classi/kernel/m*
_output_shapes
:	?*
dtype0
|
Adam/classi/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/classi/bias/m
u
&Adam/classi/bias/m/Read/ReadVariableOpReadVariableOpAdam/classi/bias/m*
_output_shapes
:*
dtype0
?
Adam/boundingbox/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/boundingbox/kernel/m
?
-Adam/boundingbox/kernel/m/Read/ReadVariableOpReadVariableOpAdam/boundingbox/kernel/m*
_output_shapes

: *
dtype0
?
Adam/boundingbox/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/boundingbox/bias/m

+Adam/boundingbox/bias/m/Read/ReadVariableOpReadVariableOpAdam/boundingbox/bias/m*
_output_shapes
:*
dtype0
?
Adam/bl_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/bl_2/kernel/v
?
&Adam/bl_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bl_2/kernel/v*&
_output_shapes
:*
dtype0
x
Adam/bl_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/bl_2/bias/v
q
$Adam/bl_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/bl_2/bias/v*
_output_shapes
:*
dtype0
?
Adam/bl_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/bl_4/kernel/v
?
&Adam/bl_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bl_4/kernel/v*&
_output_shapes
: *
dtype0
x
Adam/bl_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bl_4/bias/v
q
$Adam/bl_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/bl_4/bias/v*
_output_shapes
: *
dtype0
?
Adam/bl_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameAdam/bl_6/kernel/v
?
&Adam/bl_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bl_6/kernel/v*&
_output_shapes
: @*
dtype0
x
Adam/bl_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/bl_6/bias/v
q
$Adam/bl_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/bl_6/bias/v*
_output_shapes
:@*
dtype0
?
Adam/bb_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/bb_1/kernel/v
|
&Adam/bb_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bb_1/kernel/v*!
_output_shapes
:???*
dtype0
y
Adam/bb_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/bb_1/bias/v
r
$Adam/bb_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/bb_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/bb_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*#
shared_nameAdam/bb_2/kernel/v
z
&Adam/bb_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bb_2/kernel/v*
_output_shapes
:	?@*
dtype0
x
Adam/bb_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameAdam/bb_2/bias/v
q
$Adam/bb_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/bb_2/bias/v*
_output_shapes
:@*
dtype0
?
Adam/cl_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/cl_1/kernel/v
|
&Adam/cl_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/v*!
_output_shapes
:???*
dtype0
y
Adam/cl_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/cl_1/bias/v
r
$Adam/cl_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/bb_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *#
shared_nameAdam/bb_3/kernel/v
y
&Adam/bb_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/bb_3/kernel/v*
_output_shapes

:@ *
dtype0
x
Adam/bb_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameAdam/bb_3/bias/v
q
$Adam/bb_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/bb_3/bias/v*
_output_shapes
: *
dtype0
?
Adam/classi/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*%
shared_nameAdam/classi/kernel/v
~
(Adam/classi/kernel/v/Read/ReadVariableOpReadVariableOpAdam/classi/kernel/v*
_output_shapes
:	?*
dtype0
|
Adam/classi/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/classi/bias/v
u
&Adam/classi/bias/v/Read/ReadVariableOpReadVariableOpAdam/classi/bias/v*
_output_shapes
:*
dtype0
?
Adam/boundingbox/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: **
shared_nameAdam/boundingbox/kernel/v
?
-Adam/boundingbox/kernel/v/Read/ReadVariableOpReadVariableOpAdam/boundingbox/kernel/v*
_output_shapes

: *
dtype0
?
Adam/boundingbox/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/boundingbox/bias/v

+Adam/boundingbox/bias/v/Read/ReadVariableOpReadVariableOpAdam/boundingbox/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?n
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?m
value?mB?m B?m
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
R
"	variables
#trainable_variables
$regularization_losses
%	keras_api
h

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
R
,	variables
-trainable_variables
.regularization_losses
/	keras_api
h

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
R
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
R
>	variables
?trainable_variables
@regularization_losses
A	keras_api
h

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
h

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
h

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
h

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
h

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
h

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
?
fiter

gbeta_1

hbeta_2
	idecay
jlearning_ratem?m?&m?'m?0m?1m?Bm?Cm?Hm?Im?Nm?Om?Tm?Um?Zm?[m?`m?am?v?v?&v?'v?0v?1v?Bv?Cv?Hv?Iv?Nv?Ov?Tv?Uv?Zv?[v?`v?av?
 
?
0
1
&2
'3
04
15
B6
C7
H8
I9
N10
O11
T12
U13
Z14
[15
`16
a17
?
0
1
&2
'3
04
15
B6
C7
H8
I9
N10
O11
T12
U13
Z14
[15
`16
a17
 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
WU
VARIABLE_VALUEbl_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
 regularization_losses
 
 
 
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
WU
VARIABLE_VALUEbl_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1

&0
'1
 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
WU
VARIABLE_VALUEbl_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

00
11

00
11
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
 
 
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
WU
VARIABLE_VALUEbb_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

B0
C1

B0
C1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
WU
VARIABLE_VALUEbb_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1

H0
I1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
WU
VARIABLE_VALUEcl_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	cl_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

N0
O1

N0
O1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
WU
VARIABLE_VALUEbb_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

T0
U1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
YW
VARIABLE_VALUEclassi/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEclassi/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

Z0
[1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
^\
VARIABLE_VALUEboundingbox/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEboundingbox/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

`0
a1

`0
a1
 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
v
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
12
13
14
15
(
?0
?1
?2
?3
?4
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
zx
VARIABLE_VALUEAdam/bl_2/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_2/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bl_4/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_4/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bl_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/cl_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_3/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_3/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/classi/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/classi/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/boundingbox/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/boundingbox/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bl_2/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_2/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bl_4/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_4/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bl_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bl_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/cl_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/bb_3/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/bb_3/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/classi/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/classi/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/boundingbox/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/boundingbox/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_4Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4bl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biasbb_3/kernel	bb_3/biascl_1/kernel	cl_1/biasboundingbox/kernelboundingbox/biasclassi/kernelclassi/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference_signature_wrapper_14299
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebl_2/kernel/Read/ReadVariableOpbl_2/bias/Read/ReadVariableOpbl_4/kernel/Read/ReadVariableOpbl_4/bias/Read/ReadVariableOpbl_6/kernel/Read/ReadVariableOpbl_6/bias/Read/ReadVariableOpbb_1/kernel/Read/ReadVariableOpbb_1/bias/Read/ReadVariableOpbb_2/kernel/Read/ReadVariableOpbb_2/bias/Read/ReadVariableOpcl_1/kernel/Read/ReadVariableOpcl_1/bias/Read/ReadVariableOpbb_3/kernel/Read/ReadVariableOpbb_3/bias/Read/ReadVariableOp!classi/kernel/Read/ReadVariableOpclassi/bias/Read/ReadVariableOp&boundingbox/kernel/Read/ReadVariableOp$boundingbox/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp&Adam/bl_2/kernel/m/Read/ReadVariableOp$Adam/bl_2/bias/m/Read/ReadVariableOp&Adam/bl_4/kernel/m/Read/ReadVariableOp$Adam/bl_4/bias/m/Read/ReadVariableOp&Adam/bl_6/kernel/m/Read/ReadVariableOp$Adam/bl_6/bias/m/Read/ReadVariableOp&Adam/bb_1/kernel/m/Read/ReadVariableOp$Adam/bb_1/bias/m/Read/ReadVariableOp&Adam/bb_2/kernel/m/Read/ReadVariableOp$Adam/bb_2/bias/m/Read/ReadVariableOp&Adam/cl_1/kernel/m/Read/ReadVariableOp$Adam/cl_1/bias/m/Read/ReadVariableOp&Adam/bb_3/kernel/m/Read/ReadVariableOp$Adam/bb_3/bias/m/Read/ReadVariableOp(Adam/classi/kernel/m/Read/ReadVariableOp&Adam/classi/bias/m/Read/ReadVariableOp-Adam/boundingbox/kernel/m/Read/ReadVariableOp+Adam/boundingbox/bias/m/Read/ReadVariableOp&Adam/bl_2/kernel/v/Read/ReadVariableOp$Adam/bl_2/bias/v/Read/ReadVariableOp&Adam/bl_4/kernel/v/Read/ReadVariableOp$Adam/bl_4/bias/v/Read/ReadVariableOp&Adam/bl_6/kernel/v/Read/ReadVariableOp$Adam/bl_6/bias/v/Read/ReadVariableOp&Adam/bb_1/kernel/v/Read/ReadVariableOp$Adam/bb_1/bias/v/Read/ReadVariableOp&Adam/bb_2/kernel/v/Read/ReadVariableOp$Adam/bb_2/bias/v/Read/ReadVariableOp&Adam/cl_1/kernel/v/Read/ReadVariableOp$Adam/cl_1/bias/v/Read/ReadVariableOp&Adam/bb_3/kernel/v/Read/ReadVariableOp$Adam/bb_3/bias/v/Read/ReadVariableOp(Adam/classi/kernel/v/Read/ReadVariableOp&Adam/classi/bias/v/Read/ReadVariableOp-Adam/boundingbox/kernel/v/Read/ReadVariableOp+Adam/boundingbox/bias/v/Read/ReadVariableOpConst*R
TinK
I2G	*
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
GPU 2J 8? *'
f"R 
__inference__traced_save_15067
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biascl_1/kernel	cl_1/biasbb_3/kernel	bb_3/biasclassi/kernelclassi/biasboundingbox/kernelboundingbox/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/bl_2/kernel/mAdam/bl_2/bias/mAdam/bl_4/kernel/mAdam/bl_4/bias/mAdam/bl_6/kernel/mAdam/bl_6/bias/mAdam/bb_1/kernel/mAdam/bb_1/bias/mAdam/bb_2/kernel/mAdam/bb_2/bias/mAdam/cl_1/kernel/mAdam/cl_1/bias/mAdam/bb_3/kernel/mAdam/bb_3/bias/mAdam/classi/kernel/mAdam/classi/bias/mAdam/boundingbox/kernel/mAdam/boundingbox/bias/mAdam/bl_2/kernel/vAdam/bl_2/bias/vAdam/bl_4/kernel/vAdam/bl_4/bias/vAdam/bl_6/kernel/vAdam/bl_6/bias/vAdam/bb_1/kernel/vAdam/bb_1/bias/vAdam/bb_2/kernel/vAdam/bb_2/bias/vAdam/cl_1/kernel/vAdam/cl_1/bias/vAdam/bb_3/kernel/vAdam/bb_3/bias/vAdam/classi/kernel/vAdam/classi/bias/vAdam/boundingbox/kernel/vAdam/boundingbox/bias/v*Q
TinJ
H2F*
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
GPU 2J 8? **
f%R#
!__inference__traced_restore_15284??
?
[
?__inference_bl_7_layer_call_and_return_conditional_losses_13650

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????--@:W S
/
_output_shapes
:?????????--@
 
_user_specified_nameinputs
?
[
?__inference_bl_3_layer_call_and_return_conditional_losses_14599

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????ZZ*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????ZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
??
?
B__inference_model_3_layer_call_and_return_conditional_losses_14248
input_4$

bl_2_14196:

bl_2_14198:$

bl_4_14202: 

bl_4_14204: $

bl_6_14208: @

bl_6_14210:@

bb_1_14216:???

bb_1_14218:	?

bb_2_14221:	?@

bb_2_14223:@

bb_3_14226:@ 

bb_3_14228: 

cl_1_14231:???

cl_1_14233:	?#
boundingbox_14236: 
boundingbox_14238:
classi_14241:	?
classi_14243:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?#boundingbox/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?classi/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?
bl_1/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_1_layer_call_and_return_conditional_losses_13581?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0
bl_2_14196
bl_2_14198*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_2_layer_call_and_return_conditional_losses_13594?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13604?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0
bl_4_14202
bl_4_14204*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_4_layer_call_and_return_conditional_losses_13617?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13627?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0
bl_6_14208
bl_6_14210*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_6_layer_call_and_return_conditional_losses_13640?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13650?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_8_layer_call_and_return_conditional_losses_13658?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13891?
bb_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
bb_1_14216
bb_1_14218*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_1_layer_call_and_return_conditional_losses_13678?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0
bb_2_14221
bb_2_14223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_2_layer_call_and_return_conditional_losses_13695?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0
bb_3_14226
bb_3_14228*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_3_layer_call_and_return_conditional_losses_13712?
cl_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
cl_1_14231
cl_1_14233*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_cl_1_layer_call_and_return_conditional_losses_13729?
#boundingbox/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0boundingbox_14236boundingbox_14238*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746?
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_14241classi_14243*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_classi_layer_call_and_return_conditional_losses_13762v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????}

Identity_1Identity,boundingbox/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall$^boundingbox/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2J
#boundingbox/StatefulPartitionedCall#boundingbox/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?
@
$__inference_bl_7_layer_call_fn_14669

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13650h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????--@:W S
/
_output_shapes
:?????????--@
 
_user_specified_nameinputs
?
?
?__inference_bl_2_layer_call_and_return_conditional_losses_14579

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_14342

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_13770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
&__inference_classi_layer_call_fn_14806

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_classi_layer_call_and_return_conditional_losses_13762o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
?__inference_bl_1_layer_call_and_return_conditional_losses_13581

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:???????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:???????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
?__inference_bb_2_layer_call_and_return_conditional_losses_13695

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
?__inference_bl_5_layer_call_and_return_conditional_losses_14639

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_13665

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:???????????]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?>
?
B__inference_model_3_layer_call_and_return_conditional_losses_14192
input_4$

bl_2_14140:

bl_2_14142:$

bl_4_14146: 

bl_4_14148: $

bl_6_14152: @

bl_6_14154:@

bb_1_14160:???

bb_1_14162:	?

bb_2_14165:	?@

bb_2_14167:@

bb_3_14170:@ 

bb_3_14172: 

cl_1_14175:???

cl_1_14177:	?#
boundingbox_14180: 
boundingbox_14182:
classi_14185:	?
classi_14187:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?#boundingbox/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?classi/StatefulPartitionedCall?
bl_1/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_1_layer_call_and_return_conditional_losses_13581?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0
bl_2_14140
bl_2_14142*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_2_layer_call_and_return_conditional_losses_13594?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13604?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0
bl_4_14146
bl_4_14148*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_4_layer_call_and_return_conditional_losses_13617?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13627?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0
bl_6_14152
bl_6_14154*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_6_layer_call_and_return_conditional_losses_13640?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13650?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_8_layer_call_and_return_conditional_losses_13658?
dropout_3/PartitionedCallPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13665?
bb_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
bb_1_14160
bb_1_14162*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_1_layer_call_and_return_conditional_losses_13678?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0
bb_2_14165
bb_2_14167*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_2_layer_call_and_return_conditional_losses_13695?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0
bb_3_14170
bb_3_14172*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_3_layer_call_and_return_conditional_losses_13712?
cl_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
cl_1_14175
cl_1_14177*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_cl_1_layer_call_and_return_conditional_losses_13729?
#boundingbox/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0boundingbox_14180boundingbox_14182*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746?
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_14185classi_14187*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_classi_layer_call_and_return_conditional_losses_13762v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????}

Identity_1Identity,boundingbox/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall$^boundingbox/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2J
#boundingbox/StatefulPartitionedCall#boundingbox/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?
[
?__inference_bl_8_layer_call_and_return_conditional_losses_13658

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
[
?__inference_bl_7_layer_call_and_return_conditional_losses_14674

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
??
?
B__inference_model_3_layer_call_and_return_conditional_losses_14052

inputs$

bl_2_14000:

bl_2_14002:$

bl_4_14006: 

bl_4_14008: $

bl_6_14012: @

bl_6_14014:@

bb_1_14020:???

bb_1_14022:	?

bb_2_14025:	?@

bb_2_14027:@

bb_3_14030:@ 

bb_3_14032: 

cl_1_14035:???

cl_1_14037:	?#
boundingbox_14040: 
boundingbox_14042:
classi_14045:	?
classi_14047:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?#boundingbox/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?classi/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?
bl_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_1_layer_call_and_return_conditional_losses_13581?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0
bl_2_14000
bl_2_14002*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_2_layer_call_and_return_conditional_losses_13594?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13604?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0
bl_4_14006
bl_4_14008*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_4_layer_call_and_return_conditional_losses_13617?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13627?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0
bl_6_14012
bl_6_14014*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_6_layer_call_and_return_conditional_losses_13640?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13650?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_8_layer_call_and_return_conditional_losses_13658?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13891?
bb_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
bb_1_14020
bb_1_14022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_1_layer_call_and_return_conditional_losses_13678?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0
bb_2_14025
bb_2_14027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_2_layer_call_and_return_conditional_losses_13695?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0
bb_3_14030
bb_3_14032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_3_layer_call_and_return_conditional_losses_13712?
cl_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0
cl_1_14035
cl_1_14037*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_cl_1_layer_call_and_return_conditional_losses_13729?
#boundingbox/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0boundingbox_14040boundingbox_14042*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746?
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_14045classi_14047*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_classi_layer_call_and_return_conditional_losses_13762v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????}

Identity_1Identity,boundingbox/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall$^boundingbox/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2J
#boundingbox/StatefulPartitionedCall#boundingbox/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?=
?
B__inference_model_3_layer_call_and_return_conditional_losses_13770

inputs$

bl_2_13595:

bl_2_13597:$

bl_4_13618: 

bl_4_13620: $

bl_6_13641: @

bl_6_13643:@

bb_1_13679:???

bb_1_13681:	?

bb_2_13696:	?@

bb_2_13698:@

bb_3_13713:@ 

bb_3_13715: 

cl_1_13730:???

cl_1_13732:	?#
boundingbox_13747: 
boundingbox_13749:
classi_13763:	?
classi_13765:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?#boundingbox/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?classi/StatefulPartitionedCall?
bl_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_1_layer_call_and_return_conditional_losses_13581?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0
bl_2_13595
bl_2_13597*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_2_layer_call_and_return_conditional_losses_13594?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13604?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0
bl_4_13618
bl_4_13620*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_4_layer_call_and_return_conditional_losses_13617?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13627?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0
bl_6_13641
bl_6_13643*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_6_layer_call_and_return_conditional_losses_13640?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13650?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_8_layer_call_and_return_conditional_losses_13658?
dropout_3/PartitionedCallPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13665?
bb_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
bb_1_13679
bb_1_13681*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_1_layer_call_and_return_conditional_losses_13678?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0
bb_2_13696
bb_2_13698*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_2_layer_call_and_return_conditional_losses_13695?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0
bb_3_13713
bb_3_13715*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_3_layer_call_and_return_conditional_losses_13712?
cl_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0
cl_1_13730
cl_1_13732*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_cl_1_layer_call_and_return_conditional_losses_13729?
#boundingbox/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0boundingbox_13747boundingbox_13749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746?
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_13763classi_13765*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_classi_layer_call_and_return_conditional_losses_13762v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????}

Identity_1Identity,boundingbox/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall$^boundingbox/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2J
#boundingbox/StatefulPartitionedCall#boundingbox/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_1_layer_call_and_return_conditional_losses_14559

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:???????????d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:???????????Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
@
$__inference_bl_5_layer_call_fn_14624

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13551?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
?__inference_bb_1_layer_call_and_return_conditional_losses_13678

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_5_layer_call_and_return_conditional_losses_13627

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?
@
$__inference_bl_8_layer_call_fn_14684

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_8_layer_call_and_return_conditional_losses_13658b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
?__inference_bl_6_layer_call_and_return_conditional_losses_14659

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
[
?__inference_bl_3_layer_call_and_return_conditional_losses_14594

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_14717

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:???????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:???????????q
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:???????????k
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:???????????[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
?__inference_cl_1_layer_call_and_return_conditional_losses_14777

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?	
?
A__inference_classi_layer_call_and_return_conditional_losses_13762

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
?__inference_bl_7_layer_call_and_return_conditional_losses_13563

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
?__inference_bb_3_layer_call_and_return_conditional_losses_14797

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
?__inference_bb_2_layer_call_and_return_conditional_losses_14757

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_boundingbox_layer_call_fn_14825

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?

?
F__inference_boundingbox_layer_call_and_return_conditional_losses_13746

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?(
!__inference__traced_restore_15284
file_prefix6
assignvariableop_bl_2_kernel:*
assignvariableop_1_bl_2_bias:8
assignvariableop_2_bl_4_kernel: *
assignvariableop_3_bl_4_bias: 8
assignvariableop_4_bl_6_kernel: @*
assignvariableop_5_bl_6_bias:@3
assignvariableop_6_bb_1_kernel:???+
assignvariableop_7_bb_1_bias:	?1
assignvariableop_8_bb_2_kernel:	?@*
assignvariableop_9_bb_2_bias:@4
assignvariableop_10_cl_1_kernel:???,
assignvariableop_11_cl_1_bias:	?1
assignvariableop_12_bb_3_kernel:@ +
assignvariableop_13_bb_3_bias: 4
!assignvariableop_14_classi_kernel:	?-
assignvariableop_15_classi_bias:8
&assignvariableop_16_boundingbox_kernel: 2
$assignvariableop_17_boundingbox_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: %
assignvariableop_27_total_2: %
assignvariableop_28_count_2: %
assignvariableop_29_total_3: %
assignvariableop_30_count_3: %
assignvariableop_31_total_4: %
assignvariableop_32_count_4: @
&assignvariableop_33_adam_bl_2_kernel_m:2
$assignvariableop_34_adam_bl_2_bias_m:@
&assignvariableop_35_adam_bl_4_kernel_m: 2
$assignvariableop_36_adam_bl_4_bias_m: @
&assignvariableop_37_adam_bl_6_kernel_m: @2
$assignvariableop_38_adam_bl_6_bias_m:@;
&assignvariableop_39_adam_bb_1_kernel_m:???3
$assignvariableop_40_adam_bb_1_bias_m:	?9
&assignvariableop_41_adam_bb_2_kernel_m:	?@2
$assignvariableop_42_adam_bb_2_bias_m:@;
&assignvariableop_43_adam_cl_1_kernel_m:???3
$assignvariableop_44_adam_cl_1_bias_m:	?8
&assignvariableop_45_adam_bb_3_kernel_m:@ 2
$assignvariableop_46_adam_bb_3_bias_m: ;
(assignvariableop_47_adam_classi_kernel_m:	?4
&assignvariableop_48_adam_classi_bias_m:?
-assignvariableop_49_adam_boundingbox_kernel_m: 9
+assignvariableop_50_adam_boundingbox_bias_m:@
&assignvariableop_51_adam_bl_2_kernel_v:2
$assignvariableop_52_adam_bl_2_bias_v:@
&assignvariableop_53_adam_bl_4_kernel_v: 2
$assignvariableop_54_adam_bl_4_bias_v: @
&assignvariableop_55_adam_bl_6_kernel_v: @2
$assignvariableop_56_adam_bl_6_bias_v:@;
&assignvariableop_57_adam_bb_1_kernel_v:???3
$assignvariableop_58_adam_bb_1_bias_v:	?9
&assignvariableop_59_adam_bb_2_kernel_v:	?@2
$assignvariableop_60_adam_bb_2_bias_v:@;
&assignvariableop_61_adam_cl_1_kernel_v:???3
$assignvariableop_62_adam_cl_1_bias_v:	?8
&assignvariableop_63_adam_bb_3_kernel_v:@ 2
$assignvariableop_64_adam_bb_3_bias_v: ;
(assignvariableop_65_adam_classi_kernel_v:	?4
&assignvariableop_66_adam_classi_bias_v:?
-assignvariableop_67_adam_boundingbox_kernel_v: 9
+assignvariableop_68_adam_boundingbox_bias_v:
identity_70??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?&
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?%
value?%B?%FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?
value?B?FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*T
dtypesJ
H2F	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_bl_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_bl_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_bl_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_bl_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_bl_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_bl_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_bb_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_bb_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_bb_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_bb_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_cl_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_cl_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_bb_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_bb_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp!assignvariableop_14_classi_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_classi_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp&assignvariableop_16_boundingbox_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp$assignvariableop_17_boundingbox_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_3Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_3Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_4Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_4Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_bl_2_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_adam_bl_2_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_bl_4_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOp$assignvariableop_36_adam_bl_4_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp&assignvariableop_37_adam_bl_6_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOp$assignvariableop_38_adam_bl_6_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp&assignvariableop_39_adam_bb_1_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp$assignvariableop_40_adam_bb_1_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp&assignvariableop_41_adam_bb_2_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp$assignvariableop_42_adam_bb_2_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOp&assignvariableop_43_adam_cl_1_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOp$assignvariableop_44_adam_cl_1_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_bb_3_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOp$assignvariableop_46_adam_bb_3_bias_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_classi_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp&assignvariableop_48_adam_classi_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOp-assignvariableop_49_adam_boundingbox_kernel_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_boundingbox_bias_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOp&assignvariableop_51_adam_bl_2_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOp$assignvariableop_52_adam_bl_2_bias_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOp&assignvariableop_53_adam_bl_4_kernel_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp$assignvariableop_54_adam_bl_4_bias_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_bl_6_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp$assignvariableop_56_adam_bl_6_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOp&assignvariableop_57_adam_bb_1_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp$assignvariableop_58_adam_bb_1_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp&assignvariableop_59_adam_bb_2_kernel_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp$assignvariableop_60_adam_bb_2_bias_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_cl_1_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOp$assignvariableop_62_adam_cl_1_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOp&assignvariableop_63_adam_bb_3_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOp$assignvariableop_64_adam_bb_3_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOp(assignvariableop_65_adam_classi_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_classi_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_67AssignVariableOp-assignvariableop_67_adam_boundingbox_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_68AssignVariableOp+assignvariableop_68_adam_boundingbox_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_69Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_70IdentityIdentity_69:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_70Identity_70:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_68AssignVariableOp_682(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_13891

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:???????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:???????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:???????????q
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:???????????k
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:???????????[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_bl_6_layer_call_fn_14648

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_6_layer_call_and_return_conditional_losses_13640w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????--@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?

?
?__inference_cl_1_layer_call_and_return_conditional_losses_13729

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
?__inference_bl_4_layer_call_and_return_conditional_losses_14619

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????ZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?

?
?__inference_bl_6_layer_call_and_return_conditional_losses_13640

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????-- 
 
_user_specified_nameinputs
?
[
?__inference_bl_8_layer_call_and_return_conditional_losses_14690

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_bb_2_layer_call_fn_14746

inputs
unknown:	?@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_2_layer_call_and_return_conditional_losses_13695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
[
?__inference_bl_5_layer_call_and_return_conditional_losses_13551

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
?__inference_bb_3_layer_call_and_return_conditional_losses_13712

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_bl_4_layer_call_fn_14608

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_4_layer_call_and_return_conditional_losses_13617w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????ZZ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
?
?__inference_bl_2_layer_call_and_return_conditional_losses_13594

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:???????????w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
E
)__inference_dropout_3_layer_call_fn_14695

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13665b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_3_layer_call_and_return_conditional_losses_13604

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????ZZ*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????ZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
'__inference_model_3_layer_call_fn_14136
input_4!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_14052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?
?
'__inference_model_3_layer_call_fn_13811
input_4!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_13770o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?b
?
 __inference__wrapped_model_13530
input_4E
+model_3_bl_2_conv2d_readvariableop_resource::
,model_3_bl_2_biasadd_readvariableop_resource:E
+model_3_bl_4_conv2d_readvariableop_resource: :
,model_3_bl_4_biasadd_readvariableop_resource: E
+model_3_bl_6_conv2d_readvariableop_resource: @:
,model_3_bl_6_biasadd_readvariableop_resource:@@
+model_3_bb_1_matmul_readvariableop_resource:???;
,model_3_bb_1_biasadd_readvariableop_resource:	?>
+model_3_bb_2_matmul_readvariableop_resource:	?@:
,model_3_bb_2_biasadd_readvariableop_resource:@=
+model_3_bb_3_matmul_readvariableop_resource:@ :
,model_3_bb_3_biasadd_readvariableop_resource: @
+model_3_cl_1_matmul_readvariableop_resource:???;
,model_3_cl_1_biasadd_readvariableop_resource:	?D
2model_3_boundingbox_matmul_readvariableop_resource: A
3model_3_boundingbox_biasadd_readvariableop_resource:@
-model_3_classi_matmul_readvariableop_resource:	?<
.model_3_classi_biasadd_readvariableop_resource:
identity

identity_1??#model_3/bb_1/BiasAdd/ReadVariableOp?"model_3/bb_1/MatMul/ReadVariableOp?#model_3/bb_2/BiasAdd/ReadVariableOp?"model_3/bb_2/MatMul/ReadVariableOp?#model_3/bb_3/BiasAdd/ReadVariableOp?"model_3/bb_3/MatMul/ReadVariableOp?#model_3/bl_2/BiasAdd/ReadVariableOp?"model_3/bl_2/Conv2D/ReadVariableOp?#model_3/bl_4/BiasAdd/ReadVariableOp?"model_3/bl_4/Conv2D/ReadVariableOp?#model_3/bl_6/BiasAdd/ReadVariableOp?"model_3/bl_6/Conv2D/ReadVariableOp?*model_3/boundingbox/BiasAdd/ReadVariableOp?)model_3/boundingbox/MatMul/ReadVariableOp?#model_3/cl_1/BiasAdd/ReadVariableOp?"model_3/cl_1/MatMul/ReadVariableOp?%model_3/classi/BiasAdd/ReadVariableOp?$model_3/classi/MatMul/ReadVariableOpX
model_3/bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;Z
model_3/bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    z
model_3/bl_1/mulMulinput_4model_3/bl_1/Cast/x:output:0*
T0*1
_output_shapes
:????????????
model_3/bl_1/addAddV2model_3/bl_1/mul:z:0model_3/bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:????????????
"model_3/bl_2/Conv2D/ReadVariableOpReadVariableOp+model_3_bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
model_3/bl_2/Conv2DConv2Dmodel_3/bl_1/add:z:0*model_3/bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
?
#model_3/bl_2/BiasAdd/ReadVariableOpReadVariableOp,model_3_bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_3/bl_2/BiasAddBiasAddmodel_3/bl_2/Conv2D:output:0+model_3/bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????t
model_3/bl_2/ReluRelumodel_3/bl_2/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
model_3/bl_3/MaxPoolMaxPoolmodel_3/bl_2/Relu:activations:0*/
_output_shapes
:?????????ZZ*
ksize
*
paddingVALID*
strides
?
"model_3/bl_4/Conv2D/ReadVariableOpReadVariableOp+model_3_bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
model_3/bl_4/Conv2DConv2Dmodel_3/bl_3/MaxPool:output:0*model_3/bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
?
#model_3/bl_4/BiasAdd/ReadVariableOpReadVariableOp,model_3_bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_3/bl_4/BiasAddBiasAddmodel_3/bl_4/Conv2D:output:0+model_3/bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ r
model_3/bl_4/ReluRelumodel_3/bl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
model_3/bl_5/MaxPoolMaxPoolmodel_3/bl_4/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
"model_3/bl_6/Conv2D/ReadVariableOpReadVariableOp+model_3_bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
model_3/bl_6/Conv2DConv2Dmodel_3/bl_5/MaxPool:output:0*model_3/bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@*
paddingSAME*
strides
?
#model_3/bl_6/BiasAdd/ReadVariableOpReadVariableOp,model_3_bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_3/bl_6/BiasAddBiasAddmodel_3/bl_6/Conv2D:output:0+model_3/bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@r
model_3/bl_6/ReluRelumodel_3/bl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????--@?
model_3/bl_7/MaxPoolMaxPoolmodel_3/bl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
c
model_3/bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? y  ?
model_3/bl_8/ReshapeReshapemodel_3/bl_7/MaxPool:output:0model_3/bl_8/Const:output:0*
T0*)
_output_shapes
:???????????y
model_3/dropout_3/IdentityIdentitymodel_3/bl_8/Reshape:output:0*
T0*)
_output_shapes
:????????????
"model_3/bb_1/MatMul/ReadVariableOpReadVariableOp+model_3_bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
model_3/bb_1/MatMulMatMul#model_3/dropout_3/Identity:output:0*model_3/bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#model_3/bb_1/BiasAdd/ReadVariableOpReadVariableOp,model_3_bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_3/bb_1/BiasAddBiasAddmodel_3/bb_1/MatMul:product:0+model_3/bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
model_3/bb_1/ReluRelumodel_3/bb_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
"model_3/bb_2/MatMul/ReadVariableOpReadVariableOp+model_3_bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
model_3/bb_2/MatMulMatMulmodel_3/bb_1/Relu:activations:0*model_3/bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
#model_3/bb_2/BiasAdd/ReadVariableOpReadVariableOp,model_3_bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model_3/bb_2/BiasAddBiasAddmodel_3/bb_2/MatMul:product:0+model_3/bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@j
model_3/bb_2/ReluRelumodel_3/bb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
"model_3/bb_3/MatMul/ReadVariableOpReadVariableOp+model_3_bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
model_3/bb_3/MatMulMatMulmodel_3/bb_2/Relu:activations:0*model_3/bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
#model_3/bb_3/BiasAdd/ReadVariableOpReadVariableOp,model_3_bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
model_3/bb_3/BiasAddBiasAddmodel_3/bb_3/MatMul:product:0+model_3/bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? j
model_3/bb_3/ReluRelumodel_3/bb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
"model_3/cl_1/MatMul/ReadVariableOpReadVariableOp+model_3_cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
model_3/cl_1/MatMulMatMul#model_3/dropout_3/Identity:output:0*model_3/cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
#model_3/cl_1/BiasAdd/ReadVariableOpReadVariableOp,model_3_cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model_3/cl_1/BiasAddBiasAddmodel_3/cl_1/MatMul:product:0+model_3/cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????k
model_3/cl_1/ReluRelumodel_3/cl_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
)model_3/boundingbox/MatMul/ReadVariableOpReadVariableOp2model_3_boundingbox_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
model_3/boundingbox/MatMulMatMulmodel_3/bb_3/Relu:activations:01model_3/boundingbox/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
*model_3/boundingbox/BiasAdd/ReadVariableOpReadVariableOp3model_3_boundingbox_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_3/boundingbox/BiasAddBiasAdd$model_3/boundingbox/MatMul:product:02model_3/boundingbox/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
model_3/boundingbox/SigmoidSigmoid$model_3/boundingbox/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
$model_3/classi/MatMul/ReadVariableOpReadVariableOp-model_3_classi_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model_3/classi/MatMulMatMulmodel_3/cl_1/Relu:activations:0,model_3/classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
%model_3/classi/BiasAdd/ReadVariableOpReadVariableOp.model_3_classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model_3/classi/BiasAddBiasAddmodel_3/classi/MatMul:product:0-model_3/classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
IdentityIdentitymodel_3/boundingbox/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????p

Identity_1Identitymodel_3/classi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model_3/bb_1/BiasAdd/ReadVariableOp#^model_3/bb_1/MatMul/ReadVariableOp$^model_3/bb_2/BiasAdd/ReadVariableOp#^model_3/bb_2/MatMul/ReadVariableOp$^model_3/bb_3/BiasAdd/ReadVariableOp#^model_3/bb_3/MatMul/ReadVariableOp$^model_3/bl_2/BiasAdd/ReadVariableOp#^model_3/bl_2/Conv2D/ReadVariableOp$^model_3/bl_4/BiasAdd/ReadVariableOp#^model_3/bl_4/Conv2D/ReadVariableOp$^model_3/bl_6/BiasAdd/ReadVariableOp#^model_3/bl_6/Conv2D/ReadVariableOp+^model_3/boundingbox/BiasAdd/ReadVariableOp*^model_3/boundingbox/MatMul/ReadVariableOp$^model_3/cl_1/BiasAdd/ReadVariableOp#^model_3/cl_1/MatMul/ReadVariableOp&^model_3/classi/BiasAdd/ReadVariableOp%^model_3/classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2J
#model_3/bb_1/BiasAdd/ReadVariableOp#model_3/bb_1/BiasAdd/ReadVariableOp2H
"model_3/bb_1/MatMul/ReadVariableOp"model_3/bb_1/MatMul/ReadVariableOp2J
#model_3/bb_2/BiasAdd/ReadVariableOp#model_3/bb_2/BiasAdd/ReadVariableOp2H
"model_3/bb_2/MatMul/ReadVariableOp"model_3/bb_2/MatMul/ReadVariableOp2J
#model_3/bb_3/BiasAdd/ReadVariableOp#model_3/bb_3/BiasAdd/ReadVariableOp2H
"model_3/bb_3/MatMul/ReadVariableOp"model_3/bb_3/MatMul/ReadVariableOp2J
#model_3/bl_2/BiasAdd/ReadVariableOp#model_3/bl_2/BiasAdd/ReadVariableOp2H
"model_3/bl_2/Conv2D/ReadVariableOp"model_3/bl_2/Conv2D/ReadVariableOp2J
#model_3/bl_4/BiasAdd/ReadVariableOp#model_3/bl_4/BiasAdd/ReadVariableOp2H
"model_3/bl_4/Conv2D/ReadVariableOp"model_3/bl_4/Conv2D/ReadVariableOp2J
#model_3/bl_6/BiasAdd/ReadVariableOp#model_3/bl_6/BiasAdd/ReadVariableOp2H
"model_3/bl_6/Conv2D/ReadVariableOp"model_3/bl_6/Conv2D/ReadVariableOp2X
*model_3/boundingbox/BiasAdd/ReadVariableOp*model_3/boundingbox/BiasAdd/ReadVariableOp2V
)model_3/boundingbox/MatMul/ReadVariableOp)model_3/boundingbox/MatMul/ReadVariableOp2J
#model_3/cl_1/BiasAdd/ReadVariableOp#model_3/cl_1/BiasAdd/ReadVariableOp2H
"model_3/cl_1/MatMul/ReadVariableOp"model_3/cl_1/MatMul/ReadVariableOp2N
%model_3/classi/BiasAdd/ReadVariableOp%model_3/classi/BiasAdd/ReadVariableOp2L
$model_3/classi/MatMul/ReadVariableOp$model_3/classi/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?
?
$__inference_bb_1_layer_call_fn_14726

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_1_layer_call_and_return_conditional_losses_13678p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_14705

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:???????????]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:???????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_cl_1_layer_call_fn_14766

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_cl_1_layer_call_and_return_conditional_losses_13729p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_5_layer_call_and_return_conditional_losses_14634

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_3_layer_call_fn_14700

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_13891q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:???????????22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_7_layer_call_and_return_conditional_losses_14679

inputs
identity?
MaxPoolMaxPoolinputs*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????--@:W S
/
_output_shapes
:?????????--@
 
_user_specified_nameinputs
?
@
$__inference_bl_1_layer_call_fn_14551

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_1_layer_call_and_return_conditional_losses_13581j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:???????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
@
$__inference_bl_7_layer_call_fn_14664

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_7_layer_call_and_return_conditional_losses_13563?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_signature_wrapper_14299
input_4!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *)
f$R"
 __inference__wrapped_model_13530o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_4
?
?
'__inference_model_3_layer_call_fn_14385

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_14052o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
[
?__inference_bl_3_layer_call_and_return_conditional_losses_13539

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_bl_2_layer_call_fn_14568

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_2_layer_call_and_return_conditional_losses_13594y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:???????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?\
?
B__inference_model_3_layer_call_and_return_conditional_losses_14546

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:???3
$bb_1_biasadd_readvariableop_resource:	?6
#bb_2_matmul_readvariableop_resource:	?@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:???3
$cl_1_biasadd_readvariableop_resource:	?<
*boundingbox_matmul_readvariableop_resource: 9
+boundingbox_biasadd_readvariableop_resource:8
%classi_matmul_readvariableop_resource:	?4
&classi_biasadd_readvariableop_resource:
identity

identity_1??bb_1/BiasAdd/ReadVariableOp?bb_1/MatMul/ReadVariableOp?bb_2/BiasAdd/ReadVariableOp?bb_2/MatMul/ReadVariableOp?bb_3/BiasAdd/ReadVariableOp?bb_3/MatMul/ReadVariableOp?bl_2/BiasAdd/ReadVariableOp?bl_2/Conv2D/ReadVariableOp?bl_4/BiasAdd/ReadVariableOp?bl_4/Conv2D/ReadVariableOp?bl_6/BiasAdd/ReadVariableOp?bl_6/Conv2D/ReadVariableOp?"boundingbox/BiasAdd/ReadVariableOp?!boundingbox/MatMul/ReadVariableOp?cl_1/BiasAdd/ReadVariableOp?cl_1/MatMul/ReadVariableOp?classi/BiasAdd/ReadVariableOp?classi/MatMul/ReadVariableOpP
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;R
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    i
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????s
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:????????????
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
|
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:?????????ZZ*
ksize
*
paddingVALID*
strides
?
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
|
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ b
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@*
paddingSAME*
strides
|
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@b
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????--@?
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
[

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? y  w
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:???????????\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_3/dropout/MulMulbl_8/Reshape:output:0 dropout_3/dropout/Const:output:0*
T0*)
_output_shapes
:???????????\
dropout_3/dropout/ShapeShapebl_8/Reshape:output:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*)
_output_shapes
:???????????*
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:????????????
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:????????????
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*)
_output_shapes
:????????????
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
bb_1/MatMulMatMuldropout_3/dropout/Mul_1:z:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@Z
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@~
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? |
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Z
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
cl_1/MatMulMatMuldropout_3/dropout/Mul_1:z:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
!boundingbox/MatMul/ReadVariableOpReadVariableOp*boundingbox_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
boundingbox/MatMulMatMulbb_3/Relu:activations:0)boundingbox/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"boundingbox/BiasAdd/ReadVariableOpReadVariableOp+boundingbox_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
boundingbox/BiasAddBiasAddboundingbox/MatMul:product:0*boundingbox/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
boundingbox/SigmoidSigmoidboundingbox/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
classi/MatMul/ReadVariableOpReadVariableOp%classi_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
classi/MatMulMatMulcl_1/Relu:activations:0$classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
classi/BiasAdd/ReadVariableOpReadVariableOp&classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
classi/BiasAddBiasAddclassi/MatMul:product:0%classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityclassi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identityboundingbox/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp#^boundingbox/BiasAdd/ReadVariableOp"^boundingbox/MatMul/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^classi/BiasAdd/ReadVariableOp^classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2H
"boundingbox/BiasAdd/ReadVariableOp"boundingbox/BiasAdd/ReadVariableOp2F
!boundingbox/MatMul/ReadVariableOp!boundingbox/MatMul/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2>
classi/BiasAdd/ReadVariableOpclassi/BiasAdd/ReadVariableOp2<
classi/MatMul/ReadVariableOpclassi/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
$__inference_bb_3_layer_call_fn_14786

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bb_3_layer_call_and_return_conditional_losses_13712o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
@
$__inference_bl_5_layer_call_fn_14629

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_5_layer_call_and_return_conditional_losses_13627h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????ZZ :W S
/
_output_shapes
:?????????ZZ 
 
_user_specified_nameinputs
?

?
F__inference_boundingbox_layer_call_and_return_conditional_losses_14836

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?	
?
A__inference_classi_layer_call_and_return_conditional_losses_14816

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
__inference__traced_save_15067
file_prefix*
&savev2_bl_2_kernel_read_readvariableop(
$savev2_bl_2_bias_read_readvariableop*
&savev2_bl_4_kernel_read_readvariableop(
$savev2_bl_4_bias_read_readvariableop*
&savev2_bl_6_kernel_read_readvariableop(
$savev2_bl_6_bias_read_readvariableop*
&savev2_bb_1_kernel_read_readvariableop(
$savev2_bb_1_bias_read_readvariableop*
&savev2_bb_2_kernel_read_readvariableop(
$savev2_bb_2_bias_read_readvariableop*
&savev2_cl_1_kernel_read_readvariableop(
$savev2_cl_1_bias_read_readvariableop*
&savev2_bb_3_kernel_read_readvariableop(
$savev2_bb_3_bias_read_readvariableop,
(savev2_classi_kernel_read_readvariableop*
&savev2_classi_bias_read_readvariableop1
-savev2_boundingbox_kernel_read_readvariableop/
+savev2_boundingbox_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop1
-savev2_adam_bl_2_kernel_m_read_readvariableop/
+savev2_adam_bl_2_bias_m_read_readvariableop1
-savev2_adam_bl_4_kernel_m_read_readvariableop/
+savev2_adam_bl_4_bias_m_read_readvariableop1
-savev2_adam_bl_6_kernel_m_read_readvariableop/
+savev2_adam_bl_6_bias_m_read_readvariableop1
-savev2_adam_bb_1_kernel_m_read_readvariableop/
+savev2_adam_bb_1_bias_m_read_readvariableop1
-savev2_adam_bb_2_kernel_m_read_readvariableop/
+savev2_adam_bb_2_bias_m_read_readvariableop1
-savev2_adam_cl_1_kernel_m_read_readvariableop/
+savev2_adam_cl_1_bias_m_read_readvariableop1
-savev2_adam_bb_3_kernel_m_read_readvariableop/
+savev2_adam_bb_3_bias_m_read_readvariableop3
/savev2_adam_classi_kernel_m_read_readvariableop1
-savev2_adam_classi_bias_m_read_readvariableop8
4savev2_adam_boundingbox_kernel_m_read_readvariableop6
2savev2_adam_boundingbox_bias_m_read_readvariableop1
-savev2_adam_bl_2_kernel_v_read_readvariableop/
+savev2_adam_bl_2_bias_v_read_readvariableop1
-savev2_adam_bl_4_kernel_v_read_readvariableop/
+savev2_adam_bl_4_bias_v_read_readvariableop1
-savev2_adam_bl_6_kernel_v_read_readvariableop/
+savev2_adam_bl_6_bias_v_read_readvariableop1
-savev2_adam_bb_1_kernel_v_read_readvariableop/
+savev2_adam_bb_1_bias_v_read_readvariableop1
-savev2_adam_bb_2_kernel_v_read_readvariableop/
+savev2_adam_bb_2_bias_v_read_readvariableop1
-savev2_adam_cl_1_kernel_v_read_readvariableop/
+savev2_adam_cl_1_bias_v_read_readvariableop1
-savev2_adam_bb_3_kernel_v_read_readvariableop/
+savev2_adam_bb_3_bias_v_read_readvariableop3
/savev2_adam_classi_kernel_v_read_readvariableop1
-savev2_adam_classi_bias_v_read_readvariableop8
4savev2_adam_boundingbox_kernel_v_read_readvariableop6
2savev2_adam_boundingbox_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?&
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?%
value?%B?%FB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:F*
dtype0*?
value?B?FB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_bl_2_kernel_read_readvariableop$savev2_bl_2_bias_read_readvariableop&savev2_bl_4_kernel_read_readvariableop$savev2_bl_4_bias_read_readvariableop&savev2_bl_6_kernel_read_readvariableop$savev2_bl_6_bias_read_readvariableop&savev2_bb_1_kernel_read_readvariableop$savev2_bb_1_bias_read_readvariableop&savev2_bb_2_kernel_read_readvariableop$savev2_bb_2_bias_read_readvariableop&savev2_cl_1_kernel_read_readvariableop$savev2_cl_1_bias_read_readvariableop&savev2_bb_3_kernel_read_readvariableop$savev2_bb_3_bias_read_readvariableop(savev2_classi_kernel_read_readvariableop&savev2_classi_bias_read_readvariableop-savev2_boundingbox_kernel_read_readvariableop+savev2_boundingbox_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop-savev2_adam_bl_2_kernel_m_read_readvariableop+savev2_adam_bl_2_bias_m_read_readvariableop-savev2_adam_bl_4_kernel_m_read_readvariableop+savev2_adam_bl_4_bias_m_read_readvariableop-savev2_adam_bl_6_kernel_m_read_readvariableop+savev2_adam_bl_6_bias_m_read_readvariableop-savev2_adam_bb_1_kernel_m_read_readvariableop+savev2_adam_bb_1_bias_m_read_readvariableop-savev2_adam_bb_2_kernel_m_read_readvariableop+savev2_adam_bb_2_bias_m_read_readvariableop-savev2_adam_cl_1_kernel_m_read_readvariableop+savev2_adam_cl_1_bias_m_read_readvariableop-savev2_adam_bb_3_kernel_m_read_readvariableop+savev2_adam_bb_3_bias_m_read_readvariableop/savev2_adam_classi_kernel_m_read_readvariableop-savev2_adam_classi_bias_m_read_readvariableop4savev2_adam_boundingbox_kernel_m_read_readvariableop2savev2_adam_boundingbox_bias_m_read_readvariableop-savev2_adam_bl_2_kernel_v_read_readvariableop+savev2_adam_bl_2_bias_v_read_readvariableop-savev2_adam_bl_4_kernel_v_read_readvariableop+savev2_adam_bl_4_bias_v_read_readvariableop-savev2_adam_bl_6_kernel_v_read_readvariableop+savev2_adam_bl_6_bias_v_read_readvariableop-savev2_adam_bb_1_kernel_v_read_readvariableop+savev2_adam_bb_1_bias_v_read_readvariableop-savev2_adam_bb_2_kernel_v_read_readvariableop+savev2_adam_bb_2_bias_v_read_readvariableop-savev2_adam_cl_1_kernel_v_read_readvariableop+savev2_adam_cl_1_bias_v_read_readvariableop-savev2_adam_bb_3_kernel_v_read_readvariableop+savev2_adam_bb_3_bias_v_read_readvariableop/savev2_adam_classi_kernel_v_read_readvariableop-savev2_adam_classi_bias_v_read_readvariableop4savev2_adam_boundingbox_kernel_v_read_readvariableop2savev2_adam_boundingbox_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *T
dtypesJ
H2F	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : @:@:???:?:	?@:@:???:?:@ : :	?:: :: : : : : : : : : : : : : : : ::: : : @:@:???:?:	?@:@:???:?:@ : :	?:: :::: : : @:@:???:?:	?@:@:???:?:@ : :	?:: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:???:!

_output_shapes	
:?:%	!

_output_shapes
:	?@: 


_output_shapes
:@:'#
!
_output_shapes
:???:!

_output_shapes	
:?:$ 

_output_shapes

:@ : 

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :,"(
&
_output_shapes
:: #

_output_shapes
::,$(
&
_output_shapes
: : %

_output_shapes
: :,&(
&
_output_shapes
: @: '

_output_shapes
:@:'(#
!
_output_shapes
:???:!)

_output_shapes	
:?:%*!

_output_shapes
:	?@: +

_output_shapes
:@:',#
!
_output_shapes
:???:!-

_output_shapes	
:?:$. 

_output_shapes

:@ : /

_output_shapes
: :%0!

_output_shapes
:	?: 1

_output_shapes
::$2 

_output_shapes

: : 3

_output_shapes
::,4(
&
_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
: : 7

_output_shapes
: :,8(
&
_output_shapes
: @: 9

_output_shapes
:@:':#
!
_output_shapes
:???:!;

_output_shapes	
:?:%<!

_output_shapes
:	?@: =

_output_shapes
:@:'>#
!
_output_shapes
:???:!?

_output_shapes	
:?:$@ 

_output_shapes

:@ : A

_output_shapes
: :%B!

_output_shapes
:	?: C

_output_shapes
::$D 

_output_shapes

: : E

_output_shapes
::F

_output_shapes
: 
?

?
?__inference_bl_4_layer_call_and_return_conditional_losses_13617

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:?????????ZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ZZ
 
_user_specified_nameinputs
?
@
$__inference_bl_3_layer_call_fn_14584

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13539?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?U
?
B__inference_model_3_layer_call_and_return_conditional_losses_14462

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:???3
$bb_1_biasadd_readvariableop_resource:	?6
#bb_2_matmul_readvariableop_resource:	?@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:???3
$cl_1_biasadd_readvariableop_resource:	?<
*boundingbox_matmul_readvariableop_resource: 9
+boundingbox_biasadd_readvariableop_resource:8
%classi_matmul_readvariableop_resource:	?4
&classi_biasadd_readvariableop_resource:
identity

identity_1??bb_1/BiasAdd/ReadVariableOp?bb_1/MatMul/ReadVariableOp?bb_2/BiasAdd/ReadVariableOp?bb_2/MatMul/ReadVariableOp?bb_3/BiasAdd/ReadVariableOp?bb_3/MatMul/ReadVariableOp?bl_2/BiasAdd/ReadVariableOp?bl_2/Conv2D/ReadVariableOp?bl_4/BiasAdd/ReadVariableOp?bl_4/Conv2D/ReadVariableOp?bl_6/BiasAdd/ReadVariableOp?bl_6/Conv2D/ReadVariableOp?"boundingbox/BiasAdd/ReadVariableOp?!boundingbox/MatMul/ReadVariableOp?cl_1/BiasAdd/ReadVariableOp?cl_1/MatMul/ReadVariableOp?classi/BiasAdd/ReadVariableOp?classi/MatMul/ReadVariableOpP
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;R
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    i
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????s
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:????????????
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0?
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
|
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????d
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:????????????
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:?????????ZZ*
ksize
*
paddingVALID*
strides
?
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0?
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ *
paddingSAME*
strides
|
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ZZ b
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ZZ ?
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:?????????-- *
ksize
*
paddingVALID*
strides
?
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0?
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@*
paddingSAME*
strides
|
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????--@b
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????--@?
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
[

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? y  w
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:???????????i
dropout_3/IdentityIdentitybl_8/Reshape:output:0*
T0*)
_output_shapes
:????????????
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
bb_1/MatMulMatMuldropout_3/Identity:output:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype0?
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@Z
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@~
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? |
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Z
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype0?
cl_1/MatMulMatMuldropout_3/Identity:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????}
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
!boundingbox/MatMul/ReadVariableOpReadVariableOp*boundingbox_matmul_readvariableop_resource*
_output_shapes

: *
dtype0?
boundingbox/MatMulMatMulbb_3/Relu:activations:0)boundingbox/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"boundingbox/BiasAdd/ReadVariableOpReadVariableOp+boundingbox_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
boundingbox/BiasAddBiasAddboundingbox/MatMul:product:0*boundingbox/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
boundingbox/SigmoidSigmoidboundingbox/BiasAdd:output:0*
T0*'
_output_shapes
:??????????
classi/MatMul/ReadVariableOpReadVariableOp%classi_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
classi/MatMulMatMulcl_1/Relu:activations:0$classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
classi/BiasAdd/ReadVariableOpReadVariableOp&classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
classi/BiasAddBiasAddclassi/MatMul:product:0%classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityclassi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????h

Identity_1Identityboundingbox/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp#^boundingbox/BiasAdd/ReadVariableOp"^boundingbox/MatMul/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^classi/BiasAdd/ReadVariableOp^classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2H
"boundingbox/BiasAdd/ReadVariableOp"boundingbox/BiasAdd/ReadVariableOp2F
!boundingbox/MatMul/ReadVariableOp!boundingbox/MatMul/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2>
classi/BiasAdd/ReadVariableOpclassi/BiasAdd/ReadVariableOp2<
classi/MatMul/ReadVariableOpclassi/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
@
$__inference_bl_3_layer_call_fn_14589

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *H
fCRA
?__inference_bl_3_layer_call_and_return_conditional_losses_13604h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????ZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
?__inference_bb_1_layer_call_and_return_conditional_losses_14737

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_4:
serving_default_input_4:0????????????
boundingbox0
StatefulPartitionedCall:0?????????:
classi0
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer-9
layer_with_weights-3
layer-10
layer_with_weights-4
layer-11
layer_with_weights-5
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer_with_weights-8
layer-15
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
 regularization_losses
!	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
"	variables
#trainable_variables
$regularization_losses
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
,	variables
-trainable_variables
.regularization_losses
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
6	variables
7trainable_variables
8regularization_losses
9	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
>	variables
?trainable_variables
@regularization_losses
A	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Bkernel
Cbias
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Hkernel
Ibias
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Nkernel
Obias
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Tkernel
Ubias
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Zkernel
[bias
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
fiter

gbeta_1

hbeta_2
	idecay
jlearning_ratem?m?&m?'m?0m?1m?Bm?Cm?Hm?Im?Nm?Om?Tm?Um?Zm?[m?`m?am?v?v?&v?'v?0v?1v?Bv?Cv?Hv?Iv?Nv?Ov?Tv?Uv?Zv?[v?`v?av?"
	optimizer
 "
trackable_dict_wrapper
?
0
1
&2
'3
04
15
B6
C7
H8
I9
N10
O11
T12
U13
Z14
[15
`16
a17"
trackable_list_wrapper
?
0
1
&2
'3
04
15
B6
C7
H8
I9
N10
O11
T12
U13
Z14
[15
`16
a17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
	variables
trainable_variables
regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:#2bl_2/kernel
:2	bl_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
 regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
"	variables
#trainable_variables
$regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# 2bl_4/kernel
: 2	bl_4/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
(	variables
)trainable_variables
*regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
,	variables
-trainable_variables
.regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# @2bl_6/kernel
:@2	bl_6/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
>	variables
?trainable_variables
@regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :???2bb_1/kernel
:?2	bb_1/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?@2bb_2/kernel
:@2	bb_2/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :???2cl_1/kernel
:?2	cl_1/bias
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@ 2bb_3/kernel
: 2	bb_3/bias
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :	?2classi/kernel
:2classi/bias
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
\	variables
]trainable_variables
^regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:" 2boundingbox/kernel
:2boundingbox/bias
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
?
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
12
13
14
15"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
*:(2Adam/bl_2/kernel/m
:2Adam/bl_2/bias/m
*:( 2Adam/bl_4/kernel/m
: 2Adam/bl_4/bias/m
*:( @2Adam/bl_6/kernel/m
:@2Adam/bl_6/bias/m
%:#???2Adam/bb_1/kernel/m
:?2Adam/bb_1/bias/m
#:!	?@2Adam/bb_2/kernel/m
:@2Adam/bb_2/bias/m
%:#???2Adam/cl_1/kernel/m
:?2Adam/cl_1/bias/m
": @ 2Adam/bb_3/kernel/m
: 2Adam/bb_3/bias/m
%:#	?2Adam/classi/kernel/m
:2Adam/classi/bias/m
):' 2Adam/boundingbox/kernel/m
#:!2Adam/boundingbox/bias/m
*:(2Adam/bl_2/kernel/v
:2Adam/bl_2/bias/v
*:( 2Adam/bl_4/kernel/v
: 2Adam/bl_4/bias/v
*:( @2Adam/bl_6/kernel/v
:@2Adam/bl_6/bias/v
%:#???2Adam/bb_1/kernel/v
:?2Adam/bb_1/bias/v
#:!	?@2Adam/bb_2/kernel/v
:@2Adam/bb_2/bias/v
%:#???2Adam/cl_1/kernel/v
:?2Adam/cl_1/bias/v
": @ 2Adam/bb_3/kernel/v
: 2Adam/bb_3/bias/v
%:#	?2Adam/classi/kernel/v
:2Adam/classi/bias/v
):' 2Adam/boundingbox/kernel/v
#:!2Adam/boundingbox/bias/v
?2?
'__inference_model_3_layer_call_fn_13811
'__inference_model_3_layer_call_fn_14342
'__inference_model_3_layer_call_fn_14385
'__inference_model_3_layer_call_fn_14136?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
B__inference_model_3_layer_call_and_return_conditional_losses_14462
B__inference_model_3_layer_call_and_return_conditional_losses_14546
B__inference_model_3_layer_call_and_return_conditional_losses_14192
B__inference_model_3_layer_call_and_return_conditional_losses_14248?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
 __inference__wrapped_model_13530input_4"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_1_layer_call_fn_14551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_1_layer_call_and_return_conditional_losses_14559?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_2_layer_call_fn_14568?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_2_layer_call_and_return_conditional_losses_14579?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_3_layer_call_fn_14584
$__inference_bl_3_layer_call_fn_14589?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_3_layer_call_and_return_conditional_losses_14594
?__inference_bl_3_layer_call_and_return_conditional_losses_14599?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_4_layer_call_fn_14608?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_4_layer_call_and_return_conditional_losses_14619?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_5_layer_call_fn_14624
$__inference_bl_5_layer_call_fn_14629?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_5_layer_call_and_return_conditional_losses_14634
?__inference_bl_5_layer_call_and_return_conditional_losses_14639?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_6_layer_call_fn_14648?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_6_layer_call_and_return_conditional_losses_14659?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_7_layer_call_fn_14664
$__inference_bl_7_layer_call_fn_14669?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_7_layer_call_and_return_conditional_losses_14674
?__inference_bl_7_layer_call_and_return_conditional_losses_14679?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bl_8_layer_call_fn_14684?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bl_8_layer_call_and_return_conditional_losses_14690?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_dropout_3_layer_call_fn_14695
)__inference_dropout_3_layer_call_fn_14700?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_3_layer_call_and_return_conditional_losses_14705
D__inference_dropout_3_layer_call_and_return_conditional_losses_14717?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_bb_1_layer_call_fn_14726?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bb_1_layer_call_and_return_conditional_losses_14737?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bb_2_layer_call_fn_14746?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bb_2_layer_call_and_return_conditional_losses_14757?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_cl_1_layer_call_fn_14766?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_cl_1_layer_call_and_return_conditional_losses_14777?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
$__inference_bb_3_layer_call_fn_14786?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_bb_3_layer_call_and_return_conditional_losses_14797?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
&__inference_classi_layer_call_fn_14806?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_classi_layer_call_and_return_conditional_losses_14816?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
+__inference_boundingbox_layer_call_fn_14825?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
F__inference_boundingbox_layer_call_and_return_conditional_losses_14836?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
#__inference_signature_wrapper_14299input_4"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_13530?&'01BCHITUNO`aZ[:?7
0?-
+?(
input_4???????????
? "e?b
4
boundingbox%?"
boundingbox?????????
*
classi ?
classi??????????
?__inference_bb_1_layer_call_and_return_conditional_losses_14737_BC1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? z
$__inference_bb_1_layer_call_fn_14726RBC1?.
'?$
"?
inputs???????????
? "????????????
?__inference_bb_2_layer_call_and_return_conditional_losses_14757]HI0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? x
$__inference_bb_2_layer_call_fn_14746PHI0?-
&?#
!?
inputs??????????
? "??????????@?
?__inference_bb_3_layer_call_and_return_conditional_losses_14797\TU/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? w
$__inference_bb_3_layer_call_fn_14786OTU/?,
%?"
 ?
inputs?????????@
? "?????????? ?
?__inference_bl_1_layer_call_and_return_conditional_losses_14559l9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
$__inference_bl_1_layer_call_fn_14551_9?6
/?,
*?'
inputs???????????
? ""?????????????
?__inference_bl_2_layer_call_and_return_conditional_losses_14579p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
$__inference_bl_2_layer_call_fn_14568c9?6
/?,
*?'
inputs???????????
? ""?????????????
?__inference_bl_3_layer_call_and_return_conditional_losses_14594?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_bl_3_layer_call_and_return_conditional_losses_14599j9?6
/?,
*?'
inputs???????????
? "-?*
#? 
0?????????ZZ
? ?
$__inference_bl_3_layer_call_fn_14584?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_bl_3_layer_call_fn_14589]9?6
/?,
*?'
inputs???????????
? " ??????????ZZ?
?__inference_bl_4_layer_call_and_return_conditional_losses_14619l&'7?4
-?*
(?%
inputs?????????ZZ
? "-?*
#? 
0?????????ZZ 
? ?
$__inference_bl_4_layer_call_fn_14608_&'7?4
-?*
(?%
inputs?????????ZZ
? " ??????????ZZ ?
?__inference_bl_5_layer_call_and_return_conditional_losses_14634?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_bl_5_layer_call_and_return_conditional_losses_14639h7?4
-?*
(?%
inputs?????????ZZ 
? "-?*
#? 
0?????????-- 
? ?
$__inference_bl_5_layer_call_fn_14624?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_bl_5_layer_call_fn_14629[7?4
-?*
(?%
inputs?????????ZZ 
? " ??????????-- ?
?__inference_bl_6_layer_call_and_return_conditional_losses_14659l017?4
-?*
(?%
inputs?????????-- 
? "-?*
#? 
0?????????--@
? ?
$__inference_bl_6_layer_call_fn_14648_017?4
-?*
(?%
inputs?????????-- 
? " ??????????--@?
?__inference_bl_7_layer_call_and_return_conditional_losses_14674?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
?__inference_bl_7_layer_call_and_return_conditional_losses_14679h7?4
-?*
(?%
inputs?????????--@
? "-?*
#? 
0?????????@
? ?
$__inference_bl_7_layer_call_fn_14664?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
$__inference_bl_7_layer_call_fn_14669[7?4
-?*
(?%
inputs?????????--@
? " ??????????@?
?__inference_bl_8_layer_call_and_return_conditional_losses_14690b7?4
-?*
(?%
inputs?????????@
? "'?$
?
0???????????
? }
$__inference_bl_8_layer_call_fn_14684U7?4
-?*
(?%
inputs?????????@
? "?????????????
F__inference_boundingbox_layer_call_and_return_conditional_losses_14836\`a/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? ~
+__inference_boundingbox_layer_call_fn_14825O`a/?,
%?"
 ?
inputs????????? 
? "???????????
?__inference_cl_1_layer_call_and_return_conditional_losses_14777_NO1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? z
$__inference_cl_1_layer_call_fn_14766RNO1?.
'?$
"?
inputs???????????
? "????????????
A__inference_classi_layer_call_and_return_conditional_losses_14816]Z[0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? z
&__inference_classi_layer_call_fn_14806PZ[0?-
&?#
!?
inputs??????????
? "???????????
D__inference_dropout_3_layer_call_and_return_conditional_losses_14705`5?2
+?(
"?
inputs???????????
p 
? "'?$
?
0???????????
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_14717`5?2
+?(
"?
inputs???????????
p
? "'?$
?
0???????????
? ?
)__inference_dropout_3_layer_call_fn_14695S5?2
+?(
"?
inputs???????????
p 
? "?????????????
)__inference_dropout_3_layer_call_fn_14700S5?2
+?(
"?
inputs???????????
p
? "?????????????
B__inference_model_3_layer_call_and_return_conditional_losses_14192?&'01BCHITUNO`aZ[B??
8?5
+?(
input_4???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_14248?&'01BCHITUNO`aZ[B??
8?5
+?(
input_4???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_14462?&'01BCHITUNO`aZ[A?>
7?4
*?'
inputs???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
B__inference_model_3_layer_call_and_return_conditional_losses_14546?&'01BCHITUNO`aZ[A?>
7?4
*?'
inputs???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
'__inference_model_3_layer_call_fn_13811?&'01BCHITUNO`aZ[B??
8?5
+?(
input_4???????????
p 

 
? "=?:
?
0?????????
?
1??????????
'__inference_model_3_layer_call_fn_14136?&'01BCHITUNO`aZ[B??
8?5
+?(
input_4???????????
p

 
? "=?:
?
0?????????
?
1??????????
'__inference_model_3_layer_call_fn_14342?&'01BCHITUNO`aZ[A?>
7?4
*?'
inputs???????????
p 

 
? "=?:
?
0?????????
?
1??????????
'__inference_model_3_layer_call_fn_14385?&'01BCHITUNO`aZ[A?>
7?4
*?'
inputs???????????
p

 
? "=?:
?
0?????????
?
1??????????
#__inference_signature_wrapper_14299?&'01BCHITUNO`aZ[E?B
? 
;?8
6
input_4+?(
input_4???????????"e?b
4
boundingbox%?"
boundingbox?????????
*
classi ?
classi?????????