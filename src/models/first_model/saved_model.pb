¡©

¼
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.7.02v2.7.0-rc1-69-gc256c071bb28æÎ
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
cl_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò*
shared_namecl_1/kernel
n
cl_1/kernel/Read/ReadVariableOpReadVariableOpcl_1/kernel*!
_output_shapes
:ò*
dtype0
k
	cl_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	cl_1/bias
d
cl_1/bias/Read/ReadVariableOpReadVariableOp	cl_1/bias*
_output_shapes	
:*
dtype0
w
classi/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameclassi/kernel
p
!classi/kernel/Read/ReadVariableOpReadVariableOpclassi/kernel*
_output_shapes
:	*
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

Adam/bl_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/bl_2/kernel/m

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

Adam/bl_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/bl_4/kernel/m

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

Adam/bl_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameAdam/bl_6/kernel/m

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

Adam/cl_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò*#
shared_nameAdam/cl_1/kernel/m
|
&Adam/cl_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/m*!
_output_shapes
:ò*
dtype0
y
Adam/cl_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/cl_1/bias/m
r
$Adam/cl_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/m*
_output_shapes	
:*
dtype0

Adam/classi/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/classi/kernel/m
~
(Adam/classi/kernel/m/Read/ReadVariableOpReadVariableOpAdam/classi/kernel/m*
_output_shapes
:	*
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

Adam/bl_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/bl_2/kernel/v

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

Adam/bl_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/bl_4/kernel/v

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

Adam/bl_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*#
shared_nameAdam/bl_6/kernel/v

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

Adam/cl_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ò*#
shared_nameAdam/cl_1/kernel/v
|
&Adam/cl_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/v*!
_output_shapes
:ò*
dtype0
y
Adam/cl_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/cl_1/bias/v
r
$Adam/cl_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/v*
_output_shapes	
:*
dtype0

Adam/classi/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_nameAdam/classi/kernel/v
~
(Adam/classi/kernel/v/Read/ReadVariableOpReadVariableOpAdam/classi/kernel/v*
_output_shapes
:	*
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

NoOpNoOp
ºD
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*õC
valueëCBèC BáC

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
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
R
(	variables
)trainable_variables
*regularization_losses
+	keras_api
h

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
R
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
h

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
h

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api

Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratemm"m#m,m-m>m?mDmEmv v¡"v¢#v£,v¤-v¥>v¦?v§Dv¨Ev©
 
F
0
1
"2
#3
,4
-5
>6
?7
D8
E9
F
0
1
"2
#3
,4
-5
>6
?7
D8
E9
 
­
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
 
­
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
WU
VARIABLE_VALUEbl_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
­
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
WU
VARIABLE_VALUEbl_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
­
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
$	variables
%trainable_variables
&regularization_losses
 
 
 
­
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
(	variables
)trainable_variables
*regularization_losses
WU
VARIABLE_VALUEbl_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1

,0
-1
 
­
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
.	variables
/trainable_variables
0regularization_losses
 
 
 
­
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
2	variables
3trainable_variables
4regularization_losses
 
 
 
­
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
6	variables
7trainable_variables
8regularization_losses
 
 
 
®
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
WU
VARIABLE_VALUEcl_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	cl_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

>0
?1

>0
?1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
YW
VARIABLE_VALUEclassi/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEclassi/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

D0
E1

D0
E1
 
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
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
V
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

0
1
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

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
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
VARIABLE_VALUEAdam/cl_1/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/classi/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/classi/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEAdam/cl_1/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/classi/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/classi/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_3Placeholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿ´´
À
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3bl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biascl_1/kernel	cl_1/biasclassi/kernelclassi/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_8888
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
±
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebl_2/kernel/Read/ReadVariableOpbl_2/bias/Read/ReadVariableOpbl_4/kernel/Read/ReadVariableOpbl_4/bias/Read/ReadVariableOpbl_6/kernel/Read/ReadVariableOpbl_6/bias/Read/ReadVariableOpcl_1/kernel/Read/ReadVariableOpcl_1/bias/Read/ReadVariableOp!classi/kernel/Read/ReadVariableOpclassi/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp&Adam/bl_2/kernel/m/Read/ReadVariableOp$Adam/bl_2/bias/m/Read/ReadVariableOp&Adam/bl_4/kernel/m/Read/ReadVariableOp$Adam/bl_4/bias/m/Read/ReadVariableOp&Adam/bl_6/kernel/m/Read/ReadVariableOp$Adam/bl_6/bias/m/Read/ReadVariableOp&Adam/cl_1/kernel/m/Read/ReadVariableOp$Adam/cl_1/bias/m/Read/ReadVariableOp(Adam/classi/kernel/m/Read/ReadVariableOp&Adam/classi/bias/m/Read/ReadVariableOp&Adam/bl_2/kernel/v/Read/ReadVariableOp$Adam/bl_2/bias/v/Read/ReadVariableOp&Adam/bl_4/kernel/v/Read/ReadVariableOp$Adam/bl_4/bias/v/Read/ReadVariableOp&Adam/bl_6/kernel/v/Read/ReadVariableOp$Adam/bl_6/bias/v/Read/ReadVariableOp&Adam/cl_1/kernel/v/Read/ReadVariableOp$Adam/cl_1/bias/v/Read/ReadVariableOp(Adam/classi/kernel/v/Read/ReadVariableOp&Adam/classi/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
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
GPU 2J 8 *&
f!R
__inference__traced_save_9391
 
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biascl_1/kernel	cl_1/biasclassi/kernelclassi/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/bl_2/kernel/mAdam/bl_2/bias/mAdam/bl_4/kernel/mAdam/bl_4/bias/mAdam/bl_6/kernel/mAdam/bl_6/bias/mAdam/cl_1/kernel/mAdam/cl_1/bias/mAdam/classi/kernel/mAdam/classi/bias/mAdam/bl_2/kernel/vAdam/bl_2/bias/vAdam/bl_4/kernel/vAdam/bl_4/bias/vAdam/bl_6/kernel/vAdam/bl_6/bias/vAdam/cl_1/kernel/vAdam/cl_1/bias/vAdam/classi/kernel/vAdam/classi/bias/v*3
Tin,
*2(*
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
GPU 2J 8 *)
f$R"
 __inference__traced_restore_9518ï¨
À


&__inference_model_2_layer_call_fn_8575
input_3!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_2_layer_call_and_return_conditional_losses_8552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3

Z
>__inference_bl_3_layer_call_and_return_conditional_losses_8455

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs


b
C__inference_dropout_2_layer_call_and_return_conditional_losses_8615

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
ý

÷
>__inference_bl_4_layer_call_and_return_conditional_losses_9114

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
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
:ÿÿÿÿÿÿÿÿÿZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs
ð
Z
>__inference_bl_1_layer_call_and_return_conditional_losses_8432

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
õ
a
(__inference_dropout_2_layer_call_fn_9195

inputs
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8615q
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
±
?
#__inference_bl_5_layer_call_fn_9124

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8478h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿZZ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
 
_user_specified_nameinputs
Ä

 __inference__traced_restore_9518
file_prefix6
assignvariableop_bl_2_kernel:*
assignvariableop_1_bl_2_bias:8
assignvariableop_2_bl_4_kernel: *
assignvariableop_3_bl_4_bias: 8
assignvariableop_4_bl_6_kernel: @*
assignvariableop_5_bl_6_bias:@3
assignvariableop_6_cl_1_kernel:ò+
assignvariableop_7_cl_1_bias:	3
 assignvariableop_8_classi_kernel:	,
assignvariableop_9_classi_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: @
&assignvariableop_19_adam_bl_2_kernel_m:2
$assignvariableop_20_adam_bl_2_bias_m:@
&assignvariableop_21_adam_bl_4_kernel_m: 2
$assignvariableop_22_adam_bl_4_bias_m: @
&assignvariableop_23_adam_bl_6_kernel_m: @2
$assignvariableop_24_adam_bl_6_bias_m:@;
&assignvariableop_25_adam_cl_1_kernel_m:ò3
$assignvariableop_26_adam_cl_1_bias_m:	;
(assignvariableop_27_adam_classi_kernel_m:	4
&assignvariableop_28_adam_classi_bias_m:@
&assignvariableop_29_adam_bl_2_kernel_v:2
$assignvariableop_30_adam_bl_2_bias_v:@
&assignvariableop_31_adam_bl_4_kernel_v: 2
$assignvariableop_32_adam_bl_4_bias_v: @
&assignvariableop_33_adam_bl_6_kernel_v: @2
$assignvariableop_34_adam_bl_6_bias_v:@;
&assignvariableop_35_adam_cl_1_kernel_v:ò3
$assignvariableop_36_adam_cl_1_bias_v:	;
(assignvariableop_37_adam_classi_kernel_v:	4
&assignvariableop_38_adam_classi_bias_v:
identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ì
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_bl_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_bl_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_bl_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_bl_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_bl_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_bl_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_cl_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_cl_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp assignvariableop_8_classi_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_classi_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_bl_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp$assignvariableop_20_adam_bl_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp&assignvariableop_21_adam_bl_4_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp$assignvariableop_22_adam_bl_4_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp&assignvariableop_23_adam_bl_6_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp$assignvariableop_24_adam_bl_6_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp&assignvariableop_25_adam_cl_1_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp$assignvariableop_26_adam_cl_1_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp(assignvariableop_27_adam_classi_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp&assignvariableop_28_adam_classi_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp&assignvariableop_29_adam_bl_2_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp$assignvariableop_30_adam_bl_2_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp&assignvariableop_31_adam_bl_4_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp$assignvariableop_32_adam_bl_4_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_bl_6_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp$assignvariableop_34_adam_bl_6_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp&assignvariableop_35_adam_cl_1_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp$assignvariableop_36_adam_cl_1_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_classi_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp&assignvariableop_38_adam_classi_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix

÷
>__inference_bl_2_layer_call_and_return_conditional_losses_9074

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
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
:ÿÿÿÿÿÿÿÿÿ´´Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
ª4
Ã
A__inference_model_2_layer_call_and_return_conditional_losses_8986

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#cl_1_matmul_readvariableop_resource:ò3
$cl_1_biasadd_readvariableop_resource:	8
%classi_matmul_readvariableop_resource:	4
&classi_biasadd_readvariableop_resource:
identity¢bl_2/BiasAdd/ReadVariableOp¢bl_2/Conv2D/ReadVariableOp¢bl_4/BiasAdd/ReadVariableOp¢bl_4/Conv2D/ReadVariableOp¢bl_6/BiasAdd/ReadVariableOp¢bl_6/Conv2D/ReadVariableOp¢cl_1/BiasAdd/ReadVariableOp¢cl_1/MatMul/ReadVariableOp¢classi/BiasAdd/ReadVariableOp¢classi/MatMul/ReadVariableOpP
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;R
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    i
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´s
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides
|
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´d
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides

bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0²
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides
|
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ b
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides

bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0²
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides
|
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@b
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
[

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  w
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòi
dropout_2/IdentityIdentitybl_8/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0
cl_1/MatMulMatMuldropout_2/Identity:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
classi/MatMul/ReadVariableOpReadVariableOp%classi_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
classi/MatMulMatMulcl_1/Relu:activations:0$classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
classi/BiasAdd/ReadVariableOpReadVariableOp&classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
classi/BiasAddBiasAddclassi/MatMul:product:0%classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentityclassi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
NoOpNoOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^classi/BiasAdd/ReadVariableOp^classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2>
classi/BiasAdd/ReadVariableOpclassi/BiasAdd/ReadVariableOp2<
classi/MatMul/ReadVariableOpclassi/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
<
Â
__inference__wrapped_model_8381
input_3E
+model_2_bl_2_conv2d_readvariableop_resource::
,model_2_bl_2_biasadd_readvariableop_resource:E
+model_2_bl_4_conv2d_readvariableop_resource: :
,model_2_bl_4_biasadd_readvariableop_resource: E
+model_2_bl_6_conv2d_readvariableop_resource: @:
,model_2_bl_6_biasadd_readvariableop_resource:@@
+model_2_cl_1_matmul_readvariableop_resource:ò;
,model_2_cl_1_biasadd_readvariableop_resource:	@
-model_2_classi_matmul_readvariableop_resource:	<
.model_2_classi_biasadd_readvariableop_resource:
identity¢#model_2/bl_2/BiasAdd/ReadVariableOp¢"model_2/bl_2/Conv2D/ReadVariableOp¢#model_2/bl_4/BiasAdd/ReadVariableOp¢"model_2/bl_4/Conv2D/ReadVariableOp¢#model_2/bl_6/BiasAdd/ReadVariableOp¢"model_2/bl_6/Conv2D/ReadVariableOp¢#model_2/cl_1/BiasAdd/ReadVariableOp¢"model_2/cl_1/MatMul/ReadVariableOp¢%model_2/classi/BiasAdd/ReadVariableOp¢$model_2/classi/MatMul/ReadVariableOpX
model_2/bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Z
model_2/bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    z
model_2/bl_1/mulMulinput_3model_2/bl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
model_2/bl_1/addAddV2model_2/bl_1/mul:z:0model_2/bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
"model_2/bl_2/Conv2D/ReadVariableOpReadVariableOp+model_2_bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ã
model_2/bl_2/Conv2DConv2Dmodel_2/bl_1/add:z:0*model_2/bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides

#model_2/bl_2/BiasAdd/ReadVariableOpReadVariableOp,model_2_bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¦
model_2/bl_2/BiasAddBiasAddmodel_2/bl_2/Conv2D:output:0+model_2/bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´t
model_2/bl_2/ReluRelumodel_2/bl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´­
model_2/bl_3/MaxPoolMaxPoolmodel_2/bl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides

"model_2/bl_4/Conv2D/ReadVariableOpReadVariableOp+model_2_bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ê
model_2/bl_4/Conv2DConv2Dmodel_2/bl_3/MaxPool:output:0*model_2/bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides

#model_2/bl_4/BiasAdd/ReadVariableOpReadVariableOp,model_2_bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¤
model_2/bl_4/BiasAddBiasAddmodel_2/bl_4/Conv2D:output:0+model_2/bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ r
model_2/bl_4/ReluRelumodel_2/bl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ ­
model_2/bl_5/MaxPoolMaxPoolmodel_2/bl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides

"model_2/bl_6/Conv2D/ReadVariableOpReadVariableOp+model_2_bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Ê
model_2/bl_6/Conv2DConv2Dmodel_2/bl_5/MaxPool:output:0*model_2/bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides

#model_2/bl_6/BiasAdd/ReadVariableOpReadVariableOp,model_2_bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¤
model_2/bl_6/BiasAddBiasAddmodel_2/bl_6/Conv2D:output:0+model_2/bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@r
model_2/bl_6/ReluRelumodel_2/bl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@­
model_2/bl_7/MaxPoolMaxPoolmodel_2/bl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
c
model_2/bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  
model_2/bl_8/ReshapeReshapemodel_2/bl_7/MaxPool:output:0model_2/bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòy
model_2/dropout_2/IdentityIdentitymodel_2/bl_8/Reshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
"model_2/cl_1/MatMul/ReadVariableOpReadVariableOp+model_2_cl_1_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0¡
model_2/cl_1/MatMulMatMul#model_2/dropout_2/Identity:output:0*model_2/cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#model_2/cl_1/BiasAdd/ReadVariableOpReadVariableOp,model_2_cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
model_2/cl_1/BiasAddBiasAddmodel_2/cl_1/MatMul:product:0+model_2/cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
model_2/cl_1/ReluRelumodel_2/cl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$model_2/classi/MatMul/ReadVariableOpReadVariableOp-model_2_classi_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0 
model_2/classi/MatMulMatMulmodel_2/cl_1/Relu:activations:0,model_2/classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%model_2/classi/BiasAdd/ReadVariableOpReadVariableOp.model_2_classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
model_2/classi/BiasAddBiasAddmodel_2/classi/MatMul:product:0-model_2/classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
IdentityIdentitymodel_2/classi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
NoOpNoOp$^model_2/bl_2/BiasAdd/ReadVariableOp#^model_2/bl_2/Conv2D/ReadVariableOp$^model_2/bl_4/BiasAdd/ReadVariableOp#^model_2/bl_4/Conv2D/ReadVariableOp$^model_2/bl_6/BiasAdd/ReadVariableOp#^model_2/bl_6/Conv2D/ReadVariableOp$^model_2/cl_1/BiasAdd/ReadVariableOp#^model_2/cl_1/MatMul/ReadVariableOp&^model_2/classi/BiasAdd/ReadVariableOp%^model_2/classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2J
#model_2/bl_2/BiasAdd/ReadVariableOp#model_2/bl_2/BiasAdd/ReadVariableOp2H
"model_2/bl_2/Conv2D/ReadVariableOp"model_2/bl_2/Conv2D/ReadVariableOp2J
#model_2/bl_4/BiasAdd/ReadVariableOp#model_2/bl_4/BiasAdd/ReadVariableOp2H
"model_2/bl_4/Conv2D/ReadVariableOp"model_2/bl_4/Conv2D/ReadVariableOp2J
#model_2/bl_6/BiasAdd/ReadVariableOp#model_2/bl_6/BiasAdd/ReadVariableOp2H
"model_2/bl_6/Conv2D/ReadVariableOp"model_2/bl_6/Conv2D/ReadVariableOp2J
#model_2/cl_1/BiasAdd/ReadVariableOp#model_2/cl_1/BiasAdd/ReadVariableOp2H
"model_2/cl_1/MatMul/ReadVariableOp"model_2/cl_1/MatMul/ReadVariableOp2N
%model_2/classi/BiasAdd/ReadVariableOp%model_2/classi/BiasAdd/ReadVariableOp2L
$model_2/classi/MatMul/ReadVariableOp$model_2/classi/MatMul/ReadVariableOp:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3

÷
>__inference_bl_2_layer_call_and_return_conditional_losses_8445

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
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
:ÿÿÿÿÿÿÿÿÿ´´Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Þ

#__inference_bl_6_layer_call_fn_9143

inputs!
unknown: @
	unknown_0:@
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_8491w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
½


&__inference_model_2_layer_call_fn_8913

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_2_layer_call_and_return_conditional_losses_8552o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
¥

ó
>__inference_cl_1_layer_call_and_return_conditional_losses_9232

inputs3
matmul_readvariableop_resource:ò.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
¥
?
#__inference_bl_8_layer_call_fn_9179

inputs
identity«
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_8509b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ð;
Ã
A__inference_model_2_layer_call_and_return_conditional_losses_9041

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#cl_1_matmul_readvariableop_resource:ò3
$cl_1_biasadd_readvariableop_resource:	8
%classi_matmul_readvariableop_resource:	4
&classi_biasadd_readvariableop_resource:
identity¢bl_2/BiasAdd/ReadVariableOp¢bl_2/Conv2D/ReadVariableOp¢bl_4/BiasAdd/ReadVariableOp¢bl_4/Conv2D/ReadVariableOp¢bl_6/BiasAdd/ReadVariableOp¢bl_6/Conv2D/ReadVariableOp¢cl_1/BiasAdd/ReadVariableOp¢cl_1/MatMul/ReadVariableOp¢classi/BiasAdd/ReadVariableOp¢classi/MatMul/ReadVariableOpP
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;R
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    i
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´s
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0«
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*
paddingSAME*
strides
|
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´d
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides

bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0²
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
paddingSAME*
strides
|
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ b
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides

bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0²
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
paddingSAME*
strides
|
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@b
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
[

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  w
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_2/dropout/MulMulbl_8/Reshape:output:0 dropout_2/dropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò\
dropout_2/dropout/ShapeShapebl_8/Reshape:output:0*
T0*
_output_shapes
:¢
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Æ
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0
cl_1/MatMulMatMuldropout_2/dropout/Mul_1:z:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
classi/MatMul/ReadVariableOpReadVariableOp%classi_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
classi/MatMulMatMulcl_1/Relu:activations:0$classi/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
classi/BiasAdd/ReadVariableOpReadVariableOp&classi_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
classi/BiasAddBiasAddclassi/MatMul:product:0%classi/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
IdentityIdentityclassi/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
NoOpNoOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^classi/BiasAdd/ReadVariableOp^classi/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2>
classi/BiasAdd/ReadVariableOpclassi/BiasAdd/ReadVariableOp2<
classi/MatMul/ReadVariableOpclassi/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

Z
>__inference_bl_7_layer_call_and_return_conditional_losses_9169

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
½

%__inference_classi_layer_call_fn_9241

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÕ
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
GPU 2J 8 *I
fDRB
@__inference_classi_layer_call_and_return_conditional_losses_8545o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

?
#__inference_bl_5_layer_call_fn_9119

inputs
identityÌ
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
GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8402
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

Z
>__inference_bl_5_layer_call_and_return_conditional_losses_8402

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
Ç	
ò
@__inference_classi_layer_call_and_return_conditional_losses_9251

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_9185

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ð
Z
>__inference_bl_1_layer_call_and_return_conditional_losses_9054

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´d
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´Y
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

Z
>__inference_bl_5_layer_call_and_return_conditional_losses_9134

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿZZ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
 
_user_specified_nameinputs
À

#__inference_cl_1_layer_call_fn_9221

inputs
unknown:ò
	unknown_0:	
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_8529p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
±+
Ñ
A__inference_model_2_layer_call_and_return_conditional_losses_8855
input_3#
	bl_2_8824:
	bl_2_8826:#
	bl_4_8830: 
	bl_4_8832: #
	bl_6_8836: @
	bl_6_8838:@
	cl_1_8844:ò
	cl_1_8846:	
classi_8849:	
classi_8851:
identity¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢classi/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¹
bl_1/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_1_layer_call_and_return_conditional_losses_8432û
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0	bl_2_8824	bl_2_8826*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_8445Õ
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8455ù
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8830	bl_4_8832*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_8468Õ
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8478ù
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8836	bl_6_8838*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_8491Õ
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8501Ç
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_8509á
!dropout_2/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8615ÿ
cl_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0	cl_1_8844	cl_1_8846*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_8529
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_8849classi_8851*
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
GPU 2J 8 *I
fDRB
@__inference_classi_layer_call_and_return_conditional_losses_8545v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3

Z
>__inference_bl_5_layer_call_and_return_conditional_losses_9129

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
µ
?
#__inference_bl_3_layer_call_fn_9084

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8455h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs


b
C__inference_dropout_2_layer_call_and_return_conditional_losses_9212

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @f
dropout/MulMulinputsdropout/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¨
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòq
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòk
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò[
IdentityIdentitydropout/Mul_1:z:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
þO

__inference__traced_save_9391
file_prefix*
&savev2_bl_2_kernel_read_readvariableop(
$savev2_bl_2_bias_read_readvariableop*
&savev2_bl_4_kernel_read_readvariableop(
$savev2_bl_4_bias_read_readvariableop*
&savev2_bl_6_kernel_read_readvariableop(
$savev2_bl_6_bias_read_readvariableop*
&savev2_cl_1_kernel_read_readvariableop(
$savev2_cl_1_bias_read_readvariableop,
(savev2_classi_kernel_read_readvariableop*
&savev2_classi_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop1
-savev2_adam_bl_2_kernel_m_read_readvariableop/
+savev2_adam_bl_2_bias_m_read_readvariableop1
-savev2_adam_bl_4_kernel_m_read_readvariableop/
+savev2_adam_bl_4_bias_m_read_readvariableop1
-savev2_adam_bl_6_kernel_m_read_readvariableop/
+savev2_adam_bl_6_bias_m_read_readvariableop1
-savev2_adam_cl_1_kernel_m_read_readvariableop/
+savev2_adam_cl_1_bias_m_read_readvariableop3
/savev2_adam_classi_kernel_m_read_readvariableop1
-savev2_adam_classi_bias_m_read_readvariableop1
-savev2_adam_bl_2_kernel_v_read_readvariableop/
+savev2_adam_bl_2_bias_v_read_readvariableop1
-savev2_adam_bl_4_kernel_v_read_readvariableop/
+savev2_adam_bl_4_bias_v_read_readvariableop1
-savev2_adam_bl_6_kernel_v_read_readvariableop/
+savev2_adam_bl_6_bias_v_read_readvariableop1
-savev2_adam_cl_1_kernel_v_read_readvariableop/
+savev2_adam_cl_1_bias_v_read_readvariableop3
/savev2_adam_classi_kernel_v_read_readvariableop1
-savev2_adam_classi_bias_v_read_readvariableop
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
: é
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH½
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ù
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_bl_2_kernel_read_readvariableop$savev2_bl_2_bias_read_readvariableop&savev2_bl_4_kernel_read_readvariableop$savev2_bl_4_bias_read_readvariableop&savev2_bl_6_kernel_read_readvariableop$savev2_bl_6_bias_read_readvariableop&savev2_cl_1_kernel_read_readvariableop$savev2_cl_1_bias_read_readvariableop(savev2_classi_kernel_read_readvariableop&savev2_classi_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop-savev2_adam_bl_2_kernel_m_read_readvariableop+savev2_adam_bl_2_bias_m_read_readvariableop-savev2_adam_bl_4_kernel_m_read_readvariableop+savev2_adam_bl_4_bias_m_read_readvariableop-savev2_adam_bl_6_kernel_m_read_readvariableop+savev2_adam_bl_6_bias_m_read_readvariableop-savev2_adam_cl_1_kernel_m_read_readvariableop+savev2_adam_cl_1_bias_m_read_readvariableop/savev2_adam_classi_kernel_m_read_readvariableop-savev2_adam_classi_bias_m_read_readvariableop-savev2_adam_bl_2_kernel_v_read_readvariableop+savev2_adam_bl_2_bias_v_read_readvariableop-savev2_adam_bl_4_kernel_v_read_readvariableop+savev2_adam_bl_4_bias_v_read_readvariableop-savev2_adam_bl_6_kernel_v_read_readvariableop+savev2_adam_bl_6_bias_v_read_readvariableop-savev2_adam_cl_1_kernel_v_read_readvariableop+savev2_adam_cl_1_bias_v_read_readvariableop/savev2_adam_classi_kernel_v_read_readvariableop-savev2_adam_classi_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	
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

identity_1Identity_1:output:0*ò
_input_shapesà
Ý: ::: : : @:@:ò::	:: : : : : : : : : ::: : : @:@:ò::	:::: : : @:@:ò::	:: 2(
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
:ò:!

_output_shapes	
::%	!

_output_shapes
:	: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:ò:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::, (
&
_output_shapes
: : !

_output_shapes
: :,"(
&
_output_shapes
: @: #

_output_shapes
:@:'$#
!
_output_shapes
:ò:!%

_output_shapes	
::%&!

_output_shapes
:	: '

_output_shapes
::(

_output_shapes
: 

Z
>__inference_bl_5_layer_call_and_return_conditional_losses_8478

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- *
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿZZ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ 
 
_user_specified_nameinputs
½


&__inference_model_2_layer_call_fn_8938

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCall¾
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_2_layer_call_and_return_conditional_losses_8737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
Þ
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_8516

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs

Z
>__inference_bl_7_layer_call_and_return_conditional_losses_8414

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
*
¬
A__inference_model_2_layer_call_and_return_conditional_losses_8552

inputs#
	bl_2_8446:
	bl_2_8448:#
	bl_4_8469: 
	bl_4_8471: #
	bl_6_8492: @
	bl_6_8494:@
	cl_1_8530:ò
	cl_1_8532:	
classi_8546:	
classi_8548:
identity¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢classi/StatefulPartitionedCall¸
bl_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_1_layer_call_and_return_conditional_losses_8432û
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0	bl_2_8446	bl_2_8448*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_8445Õ
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8455ù
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8469	bl_4_8471*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_8468Õ
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8478ù
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8492	bl_6_8494*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_8491Õ
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8501Ç
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_8509Ñ
dropout_2/PartitionedCallPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8516÷
cl_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0	cl_1_8530	cl_1_8532*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_8529
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_8546classi_8548*
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
GPU 2J 8 *I
fDRB
@__inference_classi_layer_call_and_return_conditional_losses_8545v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

?
#__inference_bl_7_layer_call_fn_9159

inputs
identityÌ
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
GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8414
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
Þ
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_9200

inputs

identity_1P
IdentityIdentityinputs*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò]

Identity_1IdentityIdentity:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
æ

#__inference_bl_2_layer_call_fn_9063

inputs!
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÝ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_8445y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ´´: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

?
#__inference_bl_3_layer_call_fn_9079

inputs
identityÌ
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
GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8390
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

Z
>__inference_bl_7_layer_call_and_return_conditional_losses_8501

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ--@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
 
_user_specified_nameinputs
¹
?
#__inference_bl_1_layer_call_fn_9046

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_1_layer_call_and_return_conditional_losses_8432j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
*
­
A__inference_model_2_layer_call_and_return_conditional_losses_8820
input_3#
	bl_2_8789:
	bl_2_8791:#
	bl_4_8795: 
	bl_4_8797: #
	bl_6_8801: @
	bl_6_8803:@
	cl_1_8809:ò
	cl_1_8811:	
classi_8814:	
classi_8816:
identity¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢classi/StatefulPartitionedCall¹
bl_1/PartitionedCallPartitionedCallinput_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_1_layer_call_and_return_conditional_losses_8432û
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0	bl_2_8789	bl_2_8791*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_8445Õ
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8455ù
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8795	bl_4_8797*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_8468Õ
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8478ù
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8801	bl_6_8803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_8491Õ
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8501Ç
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_8509Ñ
dropout_2/PartitionedCallPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8516÷
cl_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0	cl_1_8809	cl_1_8811*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_8529
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_8814classi_8816*
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
GPU 2J 8 *I
fDRB
@__inference_classi_layer_call_and_return_conditional_losses_8545v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿã
NoOpNoOp^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3

Z
>__inference_bl_3_layer_call_and_return_conditional_losses_8390

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
ý

÷
>__inference_bl_4_layer_call_and_return_conditional_losses_8468

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *
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
:ÿÿÿÿÿÿÿÿÿZZ X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs

Z
>__inference_bl_7_layer_call_and_return_conditional_losses_9174

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ--@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
 
_user_specified_nameinputs
£
D
(__inference_dropout_2_layer_call_fn_9190

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8516b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿò:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
ý

÷
>__inference_bl_6_layer_call_and_return_conditional_losses_9154

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
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
:ÿÿÿÿÿÿÿÿÿ--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
®+
Ð
A__inference_model_2_layer_call_and_return_conditional_losses_8737

inputs#
	bl_2_8706:
	bl_2_8708:#
	bl_4_8712: 
	bl_4_8714: #
	bl_6_8718: @
	bl_6_8720:@
	cl_1_8726:ò
	cl_1_8728:	
classi_8731:	
classi_8733:
identity¢bl_2/StatefulPartitionedCall¢bl_4/StatefulPartitionedCall¢bl_6/StatefulPartitionedCall¢cl_1/StatefulPartitionedCall¢classi/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¸
bl_1/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_1_layer_call_and_return_conditional_losses_8432û
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/PartitionedCall:output:0	bl_2_8706	bl_2_8708*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_8445Õ
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_8455ù
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8712	bl_4_8714*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_8468Õ
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_8478ù
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8718	bl_6_8720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_8491Õ
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8501Ç
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_8509á
!dropout_2/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_8615ÿ
cl_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0	cl_1_8726	cl_1_8728*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_8529
classi/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0classi_8731classi_8733*
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
GPU 2J 8 *I
fDRB
@__inference_classi_layer_call_and_return_conditional_losses_8545v
IdentityIdentity'classi/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall^classi/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2@
classi/StatefulPartitionedCallclassi/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs

Z
>__inference_bl_3_layer_call_and_return_conditional_losses_9089

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



"__inference_signature_wrapper_8888
input_3!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_8381o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3
Â
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_8509

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ y  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿòZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
±
?
#__inference_bl_7_layer_call_fn_9164

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_8501h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ--@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@
 
_user_specified_nameinputs
ý

÷
>__inference_bl_6_layer_call_and_return_conditional_losses_8491

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@*
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
:ÿÿÿÿÿÿÿÿÿ--@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ--@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ-- : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ-- 
 
_user_specified_nameinputs
À


&__inference_model_2_layer_call_fn_8785
input_3!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:ò
	unknown_6:	
	unknown_7:	
	unknown_8:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_model_2_layer_call_and_return_conditional_losses_8737o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:ÿÿÿÿÿÿÿÿÿ´´: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
!
_user_specified_name	input_3

Z
>__inference_bl_3_layer_call_and_return_conditional_losses_9094

inputs
identity
MaxPoolMaxPoolinputs*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ*
ksize
*
paddingVALID*
strides
`
IdentityIdentityMaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ´´:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿ´´
 
_user_specified_nameinputs
¥

ó
>__inference_cl_1_layer_call_and_return_conditional_losses_8529

inputs3
matmul_readvariableop_resource:ò.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:ò*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿò: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿò
 
_user_specified_nameinputs
Ç	
ò
@__inference_classi_layer_call_and_return_conditional_losses_8545

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
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
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ

#__inference_bl_4_layer_call_fn_9103

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallÛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_8468w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿZZ: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿZZ
 
_user_specified_nameinputs"L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*³
serving_default
E
input_3:
serving_default_input_3:0ÿÿÿÿÿÿÿÿÿ´´:
classi0
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Ä

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
	optimizer
loss
	variables
trainable_variables
regularization_losses
	keras_api

signatures
ª__call__
+«&call_and_return_all_conditional_losses
¬_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
§
	variables
trainable_variables
regularization_losses
	keras_api
­__call__
+®&call_and_return_all_conditional_losses"
_tf_keras_layer
½

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
¯__call__
+°&call_and_return_all_conditional_losses"
_tf_keras_layer
§
	variables
trainable_variables
 regularization_losses
!	keras_api
±__call__
+²&call_and_return_all_conditional_losses"
_tf_keras_layer
½

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
³__call__
+´&call_and_return_all_conditional_losses"
_tf_keras_layer
§
(	variables
)trainable_variables
*regularization_losses
+	keras_api
µ__call__
+¶&call_and_return_all_conditional_losses"
_tf_keras_layer
½

,kernel
-bias
.	variables
/trainable_variables
0regularization_losses
1	keras_api
·__call__
+¸&call_and_return_all_conditional_losses"
_tf_keras_layer
§
2	variables
3trainable_variables
4regularization_losses
5	keras_api
¹__call__
+º&call_and_return_all_conditional_losses"
_tf_keras_layer
§
6	variables
7trainable_variables
8regularization_losses
9	keras_api
»__call__
+¼&call_and_return_all_conditional_losses"
_tf_keras_layer
§
:	variables
;trainable_variables
<regularization_losses
=	keras_api
½__call__
+¾&call_and_return_all_conditional_losses"
_tf_keras_layer
½

>kernel
?bias
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
¿__call__
+À&call_and_return_all_conditional_losses"
_tf_keras_layer
½

Dkernel
Ebias
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
Á__call__
+Â&call_and_return_all_conditional_losses"
_tf_keras_layer

Jiter

Kbeta_1

Lbeta_2
	Mdecay
Nlearning_ratemm"m#m,m-m>m?mDmEmv v¡"v¢#v£,v¤-v¥>v¦?v§Dv¨Ev©"
	optimizer
 "
trackable_dict_wrapper
f
0
1
"2
#3
,4
-5
>6
?7
D8
E9"
trackable_list_wrapper
f
0
1
"2
#3
,4
-5
>6
?7
D8
E9"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
	variables
trainable_variables
regularization_losses
ª__call__
¬_default_save_signature
+«&call_and_return_all_conditional_losses
'«"call_and_return_conditional_losses"
_generic_user_object
-
Ãserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
	variables
trainable_variables
regularization_losses
­__call__
+®&call_and_return_all_conditional_losses
'®"call_and_return_conditional_losses"
_generic_user_object
%:#2bl_2/kernel
:2	bl_2/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
¯__call__
+°&call_and_return_all_conditional_losses
'°"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
 regularization_losses
±__call__
+²&call_and_return_all_conditional_losses
'²"call_and_return_conditional_losses"
_generic_user_object
%:# 2bl_4/kernel
: 2	bl_4/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
$	variables
%trainable_variables
&regularization_losses
³__call__
+´&call_and_return_all_conditional_losses
'´"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
(	variables
)trainable_variables
*regularization_losses
µ__call__
+¶&call_and_return_all_conditional_losses
'¶"call_and_return_conditional_losses"
_generic_user_object
%:# @2bl_6/kernel
:@2	bl_6/bias
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
°
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
.	variables
/trainable_variables
0regularization_losses
·__call__
+¸&call_and_return_all_conditional_losses
'¸"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
2	variables
3trainable_variables
4regularization_losses
¹__call__
+º&call_and_return_all_conditional_losses
'º"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
6	variables
7trainable_variables
8regularization_losses
»__call__
+¼&call_and_return_all_conditional_losses
'¼"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
:	variables
;trainable_variables
<regularization_losses
½__call__
+¾&call_and_return_all_conditional_losses
'¾"call_and_return_conditional_losses"
_generic_user_object
 :ò2cl_1/kernel
:2	cl_1/bias
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
¿__call__
+À&call_and_return_all_conditional_losses
'À"call_and_return_conditional_losses"
_generic_user_object
 :	2classi/kernel
:2classi/bias
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
Á__call__
+Â&call_and_return_all_conditional_losses
'Â"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
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
11"
trackable_list_wrapper
0
0
1"
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

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
*:(2Adam/bl_2/kernel/m
:2Adam/bl_2/bias/m
*:( 2Adam/bl_4/kernel/m
: 2Adam/bl_4/bias/m
*:( @2Adam/bl_6/kernel/m
:@2Adam/bl_6/bias/m
%:#ò2Adam/cl_1/kernel/m
:2Adam/cl_1/bias/m
%:#	2Adam/classi/kernel/m
:2Adam/classi/bias/m
*:(2Adam/bl_2/kernel/v
:2Adam/bl_2/bias/v
*:( 2Adam/bl_4/kernel/v
: 2Adam/bl_4/bias/v
*:( @2Adam/bl_6/kernel/v
:@2Adam/bl_6/bias/v
%:#ò2Adam/cl_1/kernel/v
:2Adam/cl_1/bias/v
%:#	2Adam/classi/kernel/v
:2Adam/classi/bias/v
æ2ã
&__inference_model_2_layer_call_fn_8575
&__inference_model_2_layer_call_fn_8913
&__inference_model_2_layer_call_fn_8938
&__inference_model_2_layer_call_fn_8785À
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
Ò2Ï
A__inference_model_2_layer_call_and_return_conditional_losses_8986
A__inference_model_2_layer_call_and_return_conditional_losses_9041
A__inference_model_2_layer_call_and_return_conditional_losses_8820
A__inference_model_2_layer_call_and_return_conditional_losses_8855À
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
ÊBÇ
__inference__wrapped_model_8381input_3"
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
Í2Ê
#__inference_bl_1_layer_call_fn_9046¢
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
è2å
>__inference_bl_1_layer_call_and_return_conditional_losses_9054¢
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
Í2Ê
#__inference_bl_2_layer_call_fn_9063¢
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
è2å
>__inference_bl_2_layer_call_and_return_conditional_losses_9074¢
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
ò2ï
#__inference_bl_3_layer_call_fn_9079
#__inference_bl_3_layer_call_fn_9084¢
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
¨2¥
>__inference_bl_3_layer_call_and_return_conditional_losses_9089
>__inference_bl_3_layer_call_and_return_conditional_losses_9094¢
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
Í2Ê
#__inference_bl_4_layer_call_fn_9103¢
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
è2å
>__inference_bl_4_layer_call_and_return_conditional_losses_9114¢
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
ò2ï
#__inference_bl_5_layer_call_fn_9119
#__inference_bl_5_layer_call_fn_9124¢
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
¨2¥
>__inference_bl_5_layer_call_and_return_conditional_losses_9129
>__inference_bl_5_layer_call_and_return_conditional_losses_9134¢
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
Í2Ê
#__inference_bl_6_layer_call_fn_9143¢
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
è2å
>__inference_bl_6_layer_call_and_return_conditional_losses_9154¢
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
ò2ï
#__inference_bl_7_layer_call_fn_9159
#__inference_bl_7_layer_call_fn_9164¢
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
¨2¥
>__inference_bl_7_layer_call_and_return_conditional_losses_9169
>__inference_bl_7_layer_call_and_return_conditional_losses_9174¢
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
Í2Ê
#__inference_bl_8_layer_call_fn_9179¢
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
è2å
>__inference_bl_8_layer_call_and_return_conditional_losses_9185¢
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
2
(__inference_dropout_2_layer_call_fn_9190
(__inference_dropout_2_layer_call_fn_9195´
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
Ä2Á
C__inference_dropout_2_layer_call_and_return_conditional_losses_9200
C__inference_dropout_2_layer_call_and_return_conditional_losses_9212´
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
Í2Ê
#__inference_cl_1_layer_call_fn_9221¢
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
è2å
>__inference_cl_1_layer_call_and_return_conditional_losses_9232¢
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
Ï2Ì
%__inference_classi_layer_call_fn_9241¢
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
ê2ç
@__inference_classi_layer_call_and_return_conditional_losses_9251¢
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
ÉBÆ
"__inference_signature_wrapper_8888input_3"
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
 
__inference__wrapped_model_8381y
"#,->?DE:¢7
0¢-
+(
input_3ÿÿÿÿÿÿÿÿÿ´´
ª "/ª,
*
classi 
classiÿÿÿÿÿÿÿÿÿ®
>__inference_bl_1_layer_call_and_return_conditional_losses_9054l9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
#__inference_bl_1_layer_call_fn_9046_9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª ""ÿÿÿÿÿÿÿÿÿ´´²
>__inference_bl_2_layer_call_and_return_conditional_losses_9074p9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿ´´
 
#__inference_bl_2_layer_call_fn_9063c9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª ""ÿÿÿÿÿÿÿÿÿ´´á
>__inference_bl_3_layer_call_and_return_conditional_losses_9089R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¬
>__inference_bl_3_layer_call_and_return_conditional_losses_9094j9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿZZ
 ¹
#__inference_bl_3_layer_call_fn_9079R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
#__inference_bl_3_layer_call_fn_9084]9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿ´´
ª " ÿÿÿÿÿÿÿÿÿZZ®
>__inference_bl_4_layer_call_and_return_conditional_losses_9114l"#7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿZZ 
 
#__inference_bl_4_layer_call_fn_9103_"#7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ
ª " ÿÿÿÿÿÿÿÿÿZZ á
>__inference_bl_5_layer_call_and_return_conditional_losses_9129R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
>__inference_bl_5_layer_call_and_return_conditional_losses_9134h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ-- 
 ¹
#__inference_bl_5_layer_call_fn_9119R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
#__inference_bl_5_layer_call_fn_9124[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿZZ 
ª " ÿÿÿÿÿÿÿÿÿ-- ®
>__inference_bl_6_layer_call_and_return_conditional_losses_9154l,-7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ-- 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ--@
 
#__inference_bl_6_layer_call_fn_9143_,-7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ-- 
ª " ÿÿÿÿÿÿÿÿÿ--@á
>__inference_bl_7_layer_call_and_return_conditional_losses_9169R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ª
>__inference_bl_7_layer_call_and_return_conditional_losses_9174h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ--@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@
 ¹
#__inference_bl_7_layer_call_fn_9159R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
#__inference_bl_7_layer_call_fn_9164[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ--@
ª " ÿÿÿÿÿÿÿÿÿ@¤
>__inference_bl_8_layer_call_and_return_conditional_losses_9185b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "'¢$

0ÿÿÿÿÿÿÿÿÿò
 |
#__inference_bl_8_layer_call_fn_9179U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿò¡
>__inference_cl_1_layer_call_and_return_conditional_losses_9232_>?1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿò
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 y
#__inference_cl_1_layer_call_fn_9221R>?1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿò
ª "ÿÿÿÿÿÿÿÿÿ¡
@__inference_classi_layer_call_and_return_conditional_losses_9251]DE0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 y
%__inference_classi_layer_call_fn_9241PDE0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ§
C__inference_dropout_2_layer_call_and_return_conditional_losses_9200`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿò
p 
ª "'¢$

0ÿÿÿÿÿÿÿÿÿò
 §
C__inference_dropout_2_layer_call_and_return_conditional_losses_9212`5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿò
p
ª "'¢$

0ÿÿÿÿÿÿÿÿÿò
 
(__inference_dropout_2_layer_call_fn_9190S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿò
p 
ª "ÿÿÿÿÿÿÿÿÿò
(__inference_dropout_2_layer_call_fn_9195S5¢2
+¢(
"
inputsÿÿÿÿÿÿÿÿÿò
p
ª "ÿÿÿÿÿÿÿÿÿò¼
A__inference_model_2_layer_call_and_return_conditional_losses_8820w
"#,->?DEB¢?
8¢5
+(
input_3ÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
A__inference_model_2_layer_call_and_return_conditional_losses_8855w
"#,->?DEB¢?
8¢5
+(
input_3ÿÿÿÿÿÿÿÿÿ´´
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
A__inference_model_2_layer_call_and_return_conditional_losses_8986v
"#,->?DEA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
A__inference_model_2_layer_call_and_return_conditional_losses_9041v
"#,->?DEA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
&__inference_model_2_layer_call_fn_8575j
"#,->?DEB¢?
8¢5
+(
input_3ÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_2_layer_call_fn_8785j
"#,->?DEB¢?
8¢5
+(
input_3ÿÿÿÿÿÿÿÿÿ´´
p

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_2_layer_call_fn_8913i
"#,->?DEA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
&__inference_model_2_layer_call_fn_8938i
"#,->?DEA¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿ´´
p

 
ª "ÿÿÿÿÿÿÿÿÿ«
"__inference_signature_wrapper_8888
"#,->?DEE¢B
¢ 
;ª8
6
input_3+(
input_3ÿÿÿÿÿÿÿÿÿ´´"/ª,
*
classi 
classiÿÿÿÿÿÿÿÿÿ