ћ
н
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
ћ
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
С
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
executor_typestring Ј
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
 "serve*2.10.12v2.10.0-76-gfdfc646704c8І

RMSprop/gender-output/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name RMSprop/gender-output/bias/rms

2RMSprop/gender-output/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/gender-output/bias/rms*
_output_shapes
:*
dtype0

 RMSprop/gender-output/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" RMSprop/gender-output/kernel/rms

4RMSprop/gender-output/kernel/rms/Read/ReadVariableOpReadVariableOp RMSprop/gender-output/kernel/rms*
_output_shapes
:	*
dtype0

RMSprop/race-output/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/race-output/bias/rms

0RMSprop/race-output/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/race-output/bias/rms*
_output_shapes
:*
dtype0

RMSprop/race-output/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*/
shared_name RMSprop/race-output/kernel/rms

2RMSprop/race-output/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/race-output/kernel/rms*
_output_shapes
:	*
dtype0

RMSprop/age-output/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameRMSprop/age-output/bias/rms

/RMSprop/age-output/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/age-output/bias/rms*
_output_shapes
:*
dtype0

RMSprop/age-output/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*.
shared_nameRMSprop/age-output/kernel/rms

1RMSprop/age-output/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/age-output/kernel/rms*
_output_shapes
:	*
dtype0

RMSprop/dense_11/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_11/bias/rms

-RMSprop/dense_11/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_11/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/dense_11/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameRMSprop/dense_11/kernel/rms

/RMSprop/dense_11/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_11/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/dense_10/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameRMSprop/dense_10/bias/rms

-RMSprop/dense_10/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/dense_10/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*,
shared_nameRMSprop/dense_10/kernel/rms

/RMSprop/dense_10/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_10/kernel/rms* 
_output_shapes
:
*
dtype0

RMSprop/dense_9/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameRMSprop/dense_9/bias/rms

,RMSprop/dense_9/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_9/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/dense_9/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*+
shared_nameRMSprop/dense_9/kernel/rms

.RMSprop/dense_9/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/dense_9/kernel/rms* 
_output_shapes
:
*
dtype0
Ї
'RMSprop/batch_normalization_19/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_19/beta/rms
 
;RMSprop/batch_normalization_19/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_19/beta/rms*
_output_shapes	
:*
dtype0
Љ
(RMSprop/batch_normalization_19/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_19/gamma/rms
Ђ
<RMSprop/batch_normalization_19/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_19/gamma/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_19/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_19/bias/rms

.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_19/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_19/kernel/rms

0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_19/kernel/rms*(
_output_shapes
:*
dtype0
Ї
'RMSprop/batch_normalization_18/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_18/beta/rms
 
;RMSprop/batch_normalization_18/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_18/beta/rms*
_output_shapes	
:*
dtype0
Љ
(RMSprop/batch_normalization_18/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_18/gamma/rms
Ђ
<RMSprop/batch_normalization_18/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_18/gamma/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_18/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_18/bias/rms

.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_18/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameRMSprop/conv2d_18/kernel/rms

0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_18/kernel/rms*(
_output_shapes
:*
dtype0
Ї
'RMSprop/batch_normalization_17/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*8
shared_name)'RMSprop/batch_normalization_17/beta/rms
 
;RMSprop/batch_normalization_17/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_17/beta/rms*
_output_shapes	
:*
dtype0
Љ
(RMSprop/batch_normalization_17/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*9
shared_name*(RMSprop/batch_normalization_17/gamma/rms
Ђ
<RMSprop/batch_normalization_17/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_17/gamma/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_17/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameRMSprop/conv2d_17/bias/rms

.RMSprop/conv2d_17/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_17/bias/rms*
_output_shapes	
:*
dtype0

RMSprop/conv2d_17/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_nameRMSprop/conv2d_17/kernel/rms

0RMSprop/conv2d_17/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_17/kernel/rms*'
_output_shapes
:@*
dtype0
І
'RMSprop/batch_normalization_16/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'RMSprop/batch_normalization_16/beta/rms

;RMSprop/batch_normalization_16/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_16/beta/rms*
_output_shapes
:@*
dtype0
Ј
(RMSprop/batch_normalization_16/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*9
shared_name*(RMSprop/batch_normalization_16/gamma/rms
Ё
<RMSprop/batch_normalization_16/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_16/gamma/rms*
_output_shapes
:@*
dtype0

RMSprop/conv2d_16/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameRMSprop/conv2d_16/bias/rms

.RMSprop/conv2d_16/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_16/bias/rms*
_output_shapes
:@*
dtype0

RMSprop/conv2d_16/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*-
shared_nameRMSprop/conv2d_16/kernel/rms

0RMSprop/conv2d_16/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_16/kernel/rms*&
_output_shapes
: @*
dtype0
І
'RMSprop/batch_normalization_15/beta/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'RMSprop/batch_normalization_15/beta/rms

;RMSprop/batch_normalization_15/beta/rms/Read/ReadVariableOpReadVariableOp'RMSprop/batch_normalization_15/beta/rms*
_output_shapes
: *
dtype0
Ј
(RMSprop/batch_normalization_15/gamma/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(RMSprop/batch_normalization_15/gamma/rms
Ё
<RMSprop/batch_normalization_15/gamma/rms/Read/ReadVariableOpReadVariableOp(RMSprop/batch_normalization_15/gamma/rms*
_output_shapes
: *
dtype0

RMSprop/conv2d_15/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameRMSprop/conv2d_15/bias/rms

.RMSprop/conv2d_15/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_15/bias/rms*
_output_shapes
: *
dtype0

RMSprop/conv2d_15/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_nameRMSprop/conv2d_15/kernel/rms

0RMSprop/conv2d_15/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/conv2d_15/kernel/rms*&
_output_shapes
: *
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
count_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_5
[
count_5/Read/ReadVariableOpReadVariableOpcount_5*
_output_shapes
: *
dtype0
b
total_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_5
[
total_5/Read/ReadVariableOpReadVariableOptotal_5*
_output_shapes
: *
dtype0
b
count_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_6
[
count_6/Read/ReadVariableOpReadVariableOpcount_6*
_output_shapes
: *
dtype0
b
total_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_6
[
total_6/Read/ReadVariableOpReadVariableOptotal_6*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
|
gender-output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_namegender-output/bias
u
&gender-output/bias/Read/ReadVariableOpReadVariableOpgender-output/bias*
_output_shapes
:*
dtype0

gender-output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*%
shared_namegender-output/kernel
~
(gender-output/kernel/Read/ReadVariableOpReadVariableOpgender-output/kernel*
_output_shapes
:	*
dtype0
x
race-output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_namerace-output/bias
q
$race-output/bias/Read/ReadVariableOpReadVariableOprace-output/bias*
_output_shapes
:*
dtype0

race-output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*#
shared_namerace-output/kernel
z
&race-output/kernel/Read/ReadVariableOpReadVariableOprace-output/kernel*
_output_shapes
:	*
dtype0
v
age-output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameage-output/bias
o
#age-output/bias/Read/ReadVariableOpReadVariableOpage-output/bias*
_output_shapes
:*
dtype0

age-output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*"
shared_nameage-output/kernel
x
%age-output/kernel/Read/ReadVariableOpReadVariableOpage-output/kernel*
_output_shapes
:	*
dtype0
s
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
l
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
_output_shapes	
:*
dtype0
|
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_11/kernel
u
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel* 
_output_shapes
:
*
dtype0
s
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
l
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes	
:*
dtype0
|
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_10/kernel
u
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel* 
_output_shapes
:
*
dtype0
q
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
j
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes	
:*
dtype0
z
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_9/kernel
s
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel* 
_output_shapes
:
*
dtype0
Ѕ
&batch_normalization_19/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_19/moving_variance

:batch_normalization_19/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_19/moving_variance*
_output_shapes	
:*
dtype0

"batch_normalization_19/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_19/moving_mean

6batch_normalization_19/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_19/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_19/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_19/beta

/batch_normalization_19/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_19/beta*
_output_shapes	
:*
dtype0

batch_normalization_19/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_19/gamma

0batch_normalization_19/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_19/gamma*
_output_shapes	
:*
dtype0
u
conv2d_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_19/bias
n
"conv2d_19/bias/Read/ReadVariableOpReadVariableOpconv2d_19/bias*
_output_shapes	
:*
dtype0

conv2d_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_19/kernel

$conv2d_19/kernel/Read/ReadVariableOpReadVariableOpconv2d_19/kernel*(
_output_shapes
:*
dtype0
Ѕ
&batch_normalization_18/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_18/moving_variance

:batch_normalization_18/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_18/moving_variance*
_output_shapes	
:*
dtype0

"batch_normalization_18/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_18/moving_mean

6batch_normalization_18/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_18/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_18/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_18/beta

/batch_normalization_18/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_18/beta*
_output_shapes	
:*
dtype0

batch_normalization_18/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_18/gamma

0batch_normalization_18/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_18/gamma*
_output_shapes	
:*
dtype0
u
conv2d_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_18/bias
n
"conv2d_18/bias/Read/ReadVariableOpReadVariableOpconv2d_18/bias*
_output_shapes	
:*
dtype0

conv2d_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_18/kernel

$conv2d_18/kernel/Read/ReadVariableOpReadVariableOpconv2d_18/kernel*(
_output_shapes
:*
dtype0
Ѕ
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_17/moving_variance

:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes	
:*
dtype0

"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_17/moving_mean

6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes	
:*
dtype0

batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_17/beta

/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes	
:*
dtype0

batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_17/gamma

0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:*
dtype0
u
conv2d_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_17/bias
n
"conv2d_17/bias/Read/ReadVariableOpReadVariableOpconv2d_17/bias*
_output_shapes	
:*
dtype0

conv2d_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*!
shared_nameconv2d_17/kernel
~
$conv2d_17/kernel/Read/ReadVariableOpReadVariableOpconv2d_17/kernel*'
_output_shapes
:@*
dtype0
Є
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_16/moving_variance

:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0

"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_16/moving_mean

6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0

batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_16/beta

/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:@*
dtype0

batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_16/gamma

0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:@*
dtype0
t
conv2d_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_16/bias
m
"conv2d_16/bias/Read/ReadVariableOpReadVariableOpconv2d_16/bias*
_output_shapes
:@*
dtype0

conv2d_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_16/kernel
}
$conv2d_16/kernel/Read/ReadVariableOpReadVariableOpconv2d_16/kernel*&
_output_shapes
: @*
dtype0
Є
&batch_normalization_15/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_15/moving_variance

:batch_normalization_15/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_15/moving_variance*
_output_shapes
: *
dtype0

"batch_normalization_15/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_15/moving_mean

6batch_normalization_15/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_15/moving_mean*
_output_shapes
: *
dtype0

batch_normalization_15/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_15/beta

/batch_normalization_15/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_15/beta*
_output_shapes
: *
dtype0

batch_normalization_15/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_15/gamma

0batch_normalization_15/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_15/gamma*
_output_shapes
: *
dtype0
t
conv2d_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_15/bias
m
"conv2d_15/bias/Read/ReadVariableOpReadVariableOpconv2d_15/bias*
_output_shapes
: *
dtype0

conv2d_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_15/kernel
}
$conv2d_15/kernel/Read/ReadVariableOpReadVariableOpconv2d_15/kernel*&
_output_shapes
: *
dtype0

serving_default_input_4Placeholder*1
_output_shapes
:џџџџџџџџџЦЦ*
dtype0*&
shape:џџџџџџџџџЦЦ
б
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4conv2d_15/kernelconv2d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_varianceconv2d_19/kernelconv2d_19/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_variancedense_11/kerneldense_11/biasdense_10/kerneldense_10/biasdense_9/kerneldense_9/biasgender-output/kernelgender-output/biasrace-output/kernelrace-output/biasage-output/kernelage-output/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_1251885

NoOpNoOp
Цж
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ж
valueѕеBёе Bще
Д
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 loss
!
signatures*
* 
Ш
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op*
е
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta
4moving_mean
5moving_variance*

6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses* 
Ш
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op*
е
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance*

P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses* 
Ш
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op*
е
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance*

j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
Ш
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias
 x_jit_compiled_convolution_op*
й
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
axis

gamma
	beta
moving_mean
moving_variance*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
б
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op*
р
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance*

	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses* 

Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses* 
Ў
Њ	variables
Ћtrainable_variables
Ќregularization_losses
­	keras_api
Ў__call__
+Џ&call_and_return_all_conditional_losses
Аkernel
	Бbias*
Ў
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias*
Ў
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias*
Ў
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias*
Ў
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аkernel
	бbias*
Ў
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
иkernel
	йbias*
р
(0
)1
22
33
44
55
B6
C7
L8
M9
N10
O11
\12
]13
f14
g15
h16
i17
v18
w19
20
21
22
23
24
25
26
27
28
29
А30
Б31
И32
Й33
Р34
С35
Ш36
Щ37
а38
б39
и40
й41*

(0
)1
22
33
B4
C5
L6
M7
\8
]9
f10
g11
v12
w13
14
15
16
17
18
19
А20
Б21
И22
Й23
Р24
С25
Ш26
Щ27
а28
б29
и30
й31*
* 
Е
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
пtrace_0
рtrace_1
сtrace_2
тtrace_3* 
:
уtrace_0
фtrace_1
хtrace_2
цtrace_3* 
* 
к
	чiter

шdecay
щlearning_rate
ъmomentum
ыrho
(rmsЗ
)rmsИ
2rmsЙ
3rmsК
BrmsЛ
CrmsМ
LrmsН
MrmsО
\rmsП
]rmsР
frmsС
grmsТ
vrmsУ
wrmsФrmsХrmsЦrmsЧrmsШrmsЩrmsЪАrmsЫБrmsЬИrmsЭЙrmsЮРrmsЯСrmsаШrmsбЩrmsваrmsгбrmsдиrmsейrmsж*
* 

ьserving_default* 

(0
)1*

(0
)1*
* 

эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses*

ђtrace_0* 

ѓtrace_0* 
`Z
VARIABLE_VALUEconv2d_15/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_15/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
20
31
42
53*

20
31*
* 

єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

љtrace_0
њtrace_1* 

ћtrace_0
ќtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_15/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_15/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_15/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_15/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

B0
C1*

B0
C1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

trace_0* 

trace_0* 
`Z
VARIABLE_VALUEconv2d_16/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_16/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
L0
M1
N2
O3*

L0
M1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses* 

trace_0* 

trace_0* 

\0
]1*

\0
]1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses*

 trace_0* 

Ёtrace_0* 
`Z
VARIABLE_VALUEconv2d_17/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_17/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
f0
g1
h2
i3*

f0
g1*
* 

Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*

Їtrace_0
Јtrace_1* 

Љtrace_0
Њtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

Аtrace_0* 

Бtrace_0* 

v0
w1*

v0
w1*
* 

Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
`Z
VARIABLE_VALUEconv2d_18/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_18/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*

Оtrace_0
Пtrace_1* 

Рtrace_0
Сtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_18/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_18/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_18/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_18/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

Чtrace_0* 

Шtrace_0* 

0
1*

0
1*
* 

Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
`Z
VARIABLE_VALUEconv2d_19/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_19/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
0
1
2
3*

0
1*
* 

аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

еtrace_0
жtrace_1* 

зtrace_0
иtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_19/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_19/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_19/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_19/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses* 

оtrace_0* 

пtrace_0* 
* 
* 
* 

рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses* 

хtrace_0* 

цtrace_0* 

А0
Б1*

А0
Б1*
* 

чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
Њ	variables
Ћtrainable_variables
Ќregularization_losses
Ў__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses*

ьtrace_0* 

эtrace_0* 
_Y
VARIABLE_VALUEdense_9/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_9/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE*

И0
Й1*

И0
Й1*
* 

юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*

ѓtrace_0* 

єtrace_0* 
`Z
VARIABLE_VALUEdense_10/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_10/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*

Р0
С1*

Р0
С1*
* 

ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

њtrace_0* 

ћtrace_0* 
`Z
VARIABLE_VALUEdense_11/kernel7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_11/bias5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ш0
Щ1*

Ш0
Щ1*
* 

ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses*

trace_0* 

trace_0* 
b\
VARIABLE_VALUEage-output/kernel7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEage-output/bias5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUE*

а0
б1*

а0
б1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*

trace_0* 

trace_0* 
c]
VARIABLE_VALUErace-output/kernel7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUErace-output/bias5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUE*

и0
й1*

и0
й1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses*

trace_0* 

trace_0* 
e_
VARIABLE_VALUEgender-output/kernel7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEgender-output/bias5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUE*
N
40
51
N2
O3
h4
i5
6
7
8
9*
В
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
16
17
18
19
20
21
22*
<
0
1
2
3
4
5
6*
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
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

40
51*
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

N0
O1*
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

h0
i1*
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

0
1*
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

0
1*
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
* 
* 
* 
* 
* 
* 
<
	variables
	keras_api

total

count*
<
	variables
	keras_api

total

count*
<
 	variables
Ё	keras_api

Ђtotal

Ѓcount*
<
Є	variables
Ѕ	keras_api

Іtotal

Їcount*
M
Ј	variables
Љ	keras_api

Њtotal

Ћcount
Ќ
_fn_kwargs*
M
­	variables
Ў	keras_api

Џtotal

Аcount
Б
_fn_kwargs*
M
В	variables
Г	keras_api

Дtotal

Еcount
Ж
_fn_kwargs*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_64keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_64keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_54keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_54keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

Ђ0
Ѓ1*

 	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

І0
Ї1*

Є	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*

Њ0
Ћ1*

Ј	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Џ0
А1*

­	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Д0
Е1*

В	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

VARIABLE_VALUERMSprop/conv2d_15/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_15/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(RMSprop/batch_normalization_15/gamma/rmsSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE'RMSprop/batch_normalization_15/beta/rmsRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_16/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_16/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(RMSprop/batch_normalization_16/gamma/rmsSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE'RMSprop/batch_normalization_16/beta/rmsRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_17/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_17/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(RMSprop/batch_normalization_17/gamma/rmsSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE'RMSprop/batch_normalization_17/beta/rmsRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_18/kernel/rmsTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_18/bias/rmsRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(RMSprop/batch_normalization_18/gamma/rmsSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE'RMSprop/batch_normalization_18/beta/rmsRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_19/kernel/rmsTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/conv2d_19/bias/rmsRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE(RMSprop/batch_normalization_19/gamma/rmsSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE'RMSprop/batch_normalization_19/beta/rmsRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_9/kernel/rmsUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_9/bias/rmsSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_10/kernel/rmsUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_10/bias/rmsSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_11/kernel/rmsUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/dense_11/bias/rmsSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/age-output/kernel/rmsUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/age-output/bias/rmsSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/race-output/kernel/rmsUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/race-output/bias/rmsSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE RMSprop/gender-output/kernel/rmsUlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUERMSprop/gender-output/bias/rmsSlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Я#
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_15/kernel/Read/ReadVariableOp"conv2d_15/bias/Read/ReadVariableOp0batch_normalization_15/gamma/Read/ReadVariableOp/batch_normalization_15/beta/Read/ReadVariableOp6batch_normalization_15/moving_mean/Read/ReadVariableOp:batch_normalization_15/moving_variance/Read/ReadVariableOp$conv2d_16/kernel/Read/ReadVariableOp"conv2d_16/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp$conv2d_17/kernel/Read/ReadVariableOp"conv2d_17/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp$conv2d_18/kernel/Read/ReadVariableOp"conv2d_18/bias/Read/ReadVariableOp0batch_normalization_18/gamma/Read/ReadVariableOp/batch_normalization_18/beta/Read/ReadVariableOp6batch_normalization_18/moving_mean/Read/ReadVariableOp:batch_normalization_18/moving_variance/Read/ReadVariableOp$conv2d_19/kernel/Read/ReadVariableOp"conv2d_19/bias/Read/ReadVariableOp0batch_normalization_19/gamma/Read/ReadVariableOp/batch_normalization_19/beta/Read/ReadVariableOp6batch_normalization_19/moving_mean/Read/ReadVariableOp:batch_normalization_19/moving_variance/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOp#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOp%age-output/kernel/Read/ReadVariableOp#age-output/bias/Read/ReadVariableOp&race-output/kernel/Read/ReadVariableOp$race-output/bias/Read/ReadVariableOp(gender-output/kernel/Read/ReadVariableOp&gender-output/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal_6/Read/ReadVariableOpcount_6/Read/ReadVariableOptotal_5/Read/ReadVariableOpcount_5/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0RMSprop/conv2d_15/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_15/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_15/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_15/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_16/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_16/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_16/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_16/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_17/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_17/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_17/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_17/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_18/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_18/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_18/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_18/beta/rms/Read/ReadVariableOp0RMSprop/conv2d_19/kernel/rms/Read/ReadVariableOp.RMSprop/conv2d_19/bias/rms/Read/ReadVariableOp<RMSprop/batch_normalization_19/gamma/rms/Read/ReadVariableOp;RMSprop/batch_normalization_19/beta/rms/Read/ReadVariableOp.RMSprop/dense_9/kernel/rms/Read/ReadVariableOp,RMSprop/dense_9/bias/rms/Read/ReadVariableOp/RMSprop/dense_10/kernel/rms/Read/ReadVariableOp-RMSprop/dense_10/bias/rms/Read/ReadVariableOp/RMSprop/dense_11/kernel/rms/Read/ReadVariableOp-RMSprop/dense_11/bias/rms/Read/ReadVariableOp1RMSprop/age-output/kernel/rms/Read/ReadVariableOp/RMSprop/age-output/bias/rms/Read/ReadVariableOp2RMSprop/race-output/kernel/rms/Read/ReadVariableOp0RMSprop/race-output/bias/rms/Read/ReadVariableOp4RMSprop/gender-output/kernel/rms/Read/ReadVariableOp2RMSprop/gender-output/bias/rms/Read/ReadVariableOpConst*j
Tinc
a2_	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_1253397

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_15/kernelconv2d_15/biasbatch_normalization_15/gammabatch_normalization_15/beta"batch_normalization_15/moving_mean&batch_normalization_15/moving_varianceconv2d_16/kernelconv2d_16/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_varianceconv2d_17/kernelconv2d_17/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_varianceconv2d_18/kernelconv2d_18/biasbatch_normalization_18/gammabatch_normalization_18/beta"batch_normalization_18/moving_mean&batch_normalization_18/moving_varianceconv2d_19/kernelconv2d_19/biasbatch_normalization_19/gammabatch_normalization_19/beta"batch_normalization_19/moving_mean&batch_normalization_19/moving_variancedense_9/kerneldense_9/biasdense_10/kerneldense_10/biasdense_11/kerneldense_11/biasage-output/kernelage-output/biasrace-output/kernelrace-output/biasgender-output/kernelgender-output/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototal_6count_6total_5count_5total_4count_4total_3count_3total_2count_2total_1count_1totalcountRMSprop/conv2d_15/kernel/rmsRMSprop/conv2d_15/bias/rms(RMSprop/batch_normalization_15/gamma/rms'RMSprop/batch_normalization_15/beta/rmsRMSprop/conv2d_16/kernel/rmsRMSprop/conv2d_16/bias/rms(RMSprop/batch_normalization_16/gamma/rms'RMSprop/batch_normalization_16/beta/rmsRMSprop/conv2d_17/kernel/rmsRMSprop/conv2d_17/bias/rms(RMSprop/batch_normalization_17/gamma/rms'RMSprop/batch_normalization_17/beta/rmsRMSprop/conv2d_18/kernel/rmsRMSprop/conv2d_18/bias/rms(RMSprop/batch_normalization_18/gamma/rms'RMSprop/batch_normalization_18/beta/rmsRMSprop/conv2d_19/kernel/rmsRMSprop/conv2d_19/bias/rms(RMSprop/batch_normalization_19/gamma/rms'RMSprop/batch_normalization_19/beta/rmsRMSprop/dense_9/kernel/rmsRMSprop/dense_9/bias/rmsRMSprop/dense_10/kernel/rmsRMSprop/dense_10/bias/rmsRMSprop/dense_11/kernel/rmsRMSprop/dense_11/bias/rmsRMSprop/age-output/kernel/rmsRMSprop/age-output/bias/rmsRMSprop/race-output/kernel/rmsRMSprop/race-output/bias/rms RMSprop/gender-output/kernel/rmsRMSprop/gender-output/bias/rms*i
Tinb
`2^*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_1253686ЬХ
	
г
8__inference_batch_normalization_16_layer_call_fn_1252543

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250449
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
Л
њ
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?^
mulMulbeta:output:0BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџ^
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ­
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1250900*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџd

Identity_1IdentityIdentityN:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_18_layer_call_fn_1252768

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
	
г
8__inference_batch_normalization_16_layer_call_fn_1252530

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250418
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

Т
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252579

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
д

/__inference_gender-output_layer_call_fn_1252992

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
з
8__inference_batch_normalization_19_layer_call_fn_1252819

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250677
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ё

љ
G__inference_age-output_layer_call_and_return_conditional_losses_1250959

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
з
8__inference_batch_normalization_18_layer_call_fn_1252727

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250601
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1252681

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250494

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
М
­

)__inference_model_2_layer_call_fn_1251978

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:


unknown_30:	

unknown_31:


unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:

unknown_37:	

unknown_38:

unknown_39:	

unknown_40:
identity

identity_1

identity_2ЂStatefulPartitionedCallЋ
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
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1250968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252745

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЁЬ
Щ$
D__inference_model_2_layer_call_and_return_conditional_losses_1252238

inputsB
(conv2d_15_conv2d_readvariableop_resource: 7
)conv2d_15_biasadd_readvariableop_resource: <
.batch_normalization_15_readvariableop_resource: >
0batch_normalization_15_readvariableop_1_resource: M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_16_conv2d_readvariableop_resource: @7
)conv2d_16_biasadd_readvariableop_resource:@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_17_conv2d_readvariableop_resource:@8
)conv2d_17_biasadd_readvariableop_resource:	=
.batch_normalization_17_readvariableop_resource:	?
0batch_normalization_17_readvariableop_1_resource:	N
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	D
(conv2d_18_conv2d_readvariableop_resource:8
)conv2d_18_biasadd_readvariableop_resource:	=
.batch_normalization_18_readvariableop_resource:	?
0batch_normalization_18_readvariableop_1_resource:	N
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:	D
(conv2d_19_conv2d_readvariableop_resource:8
)conv2d_19_biasadd_readvariableop_resource:	=
.batch_normalization_19_readvariableop_resource:	?
0batch_normalization_19_readvariableop_1_resource:	N
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:	;
'dense_11_matmul_readvariableop_resource:
7
(dense_11_biasadd_readvariableop_resource:	;
'dense_10_matmul_readvariableop_resource:
7
(dense_10_biasadd_readvariableop_resource:	:
&dense_9_matmul_readvariableop_resource:
6
'dense_9_biasadd_readvariableop_resource:	?
,gender_output_matmul_readvariableop_resource:	;
-gender_output_biasadd_readvariableop_resource:=
*race_output_matmul_readvariableop_resource:	9
+race_output_biasadd_readvariableop_resource:<
)age_output_matmul_readvariableop_resource:	8
*age_output_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђ!age-output/BiasAdd/ReadVariableOpЂ age-output/MatMul/ReadVariableOpЂ6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_15/ReadVariableOpЂ'batch_normalization_15/ReadVariableOp_1Ђ6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_16/ReadVariableOpЂ'batch_normalization_16/ReadVariableOp_1Ђ6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_17/ReadVariableOpЂ'batch_normalization_17/ReadVariableOp_1Ђ6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_18/ReadVariableOpЂ'batch_normalization_18/ReadVariableOp_1Ђ6batch_normalization_19/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_19/ReadVariableOpЂ'batch_normalization_19/ReadVariableOp_1Ђ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpЂdense_10/BiasAdd/ReadVariableOpЂdense_10/MatMul/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂdense_9/MatMul/ReadVariableOpЂ$gender-output/BiasAdd/ReadVariableOpЂ#gender-output/MatMul/ReadVariableOpЂ"race-output/BiasAdd/ReadVariableOpЂ!race-output/MatMul/ReadVariableOp
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0А
conv2d_15/Conv2DConv2Dinputs'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ *
paddingVALID*
strides

 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ n
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџФФ 
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0С
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_15/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџФФ : : : : :*
epsilon%o:*
is_training( Н
max_pooling2d_15/MaxPoolMaxPool+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџbb *
ksize
*
paddingVALID*
strides

conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@*
paddingVALID*
strides

 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@l
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``@
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0П
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_16/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ``@:@:@:@:@:*
epsilon%o:*
is_training( Н
max_pooling2d_16/MaxPoolMaxPool+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ00@*
ksize
*
paddingVALID*
strides

conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ъ
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..*
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..m
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ..
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ф
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_17/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ..:::::*
epsilon%o:*
is_training( О
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_17/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџm
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ф
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_18/Relu:activations:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( О
max_pooling2d_18/MaxPoolMaxPool+batch_normalization_18/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ

*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџm
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ф
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_19/Relu:activations:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( О
max_pooling2d_19/MaxPoolMaxPool+batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
}
,global_max_pooling2d_3/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ў
global_max_pooling2d_3/MaxMax!max_pooling2d_19/MaxPool:output:05global_max_pooling2d_3/Max/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_11/MatMulMatMul#global_max_pooling2d_3/Max:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_10/MatMulMatMul#global_max_pooling2d_3/Max:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_9/MatMulMatMul#global_max_pooling2d_3/Max:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dense_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?v
dense_9/mulMuldense_9/beta:output:0dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ^
dense_9/SigmoidSigmoiddense_9/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџv
dense_9/mul_1Muldense_9/BiasAdd:output:0dense_9/Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџb
dense_9/IdentityIdentitydense_9/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџХ
dense_9/IdentityN	IdentityNdense_9/mul_1:z:0dense_9/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1252207*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
#gender-output/MatMul/ReadVariableOpReadVariableOp,gender_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gender-output/MatMulMatMuldense_11/Relu:activations:0+gender-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
$gender-output/BiasAdd/ReadVariableOpReadVariableOp-gender_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
gender-output/BiasAddBiasAddgender-output/MatMul:product:0,gender-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
gender-output/SoftmaxSoftmaxgender-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
!race-output/MatMul/ReadVariableOpReadVariableOp*race_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
race-output/MatMulMatMuldense_10/Relu:activations:0)race-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
"race-output/BiasAdd/ReadVariableOpReadVariableOp+race_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
race-output/BiasAddBiasAddrace-output/MatMul:product:0*race-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџn
race-output/SoftmaxSoftmaxrace-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
 age-output/MatMul/ReadVariableOpReadVariableOp)age_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
age-output/MatMulMatMuldense_9/IdentityN:output:0(age-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!age-output/BiasAdd/ReadVariableOpReadVariableOp*age_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
age-output/BiasAddBiasAddage-output/MatMul:product:0)age-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџl
age-output/SigmoidSigmoidage-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
IdentityIdentityage-output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџn

Identity_1Identityrace-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџp

Identity_2Identitygender-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЁ
NoOpNoOp"^age-output/BiasAdd/ReadVariableOp!^age-output/MatMul/ReadVariableOp7^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp%^gender-output/BiasAdd/ReadVariableOp$^gender-output/MatMul/ReadVariableOp#^race-output/BiasAdd/ReadVariableOp"^race-output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!age-output/BiasAdd/ReadVariableOp!age-output/BiasAdd/ReadVariableOp2D
 age-output/MatMul/ReadVariableOp age-output/MatMul/ReadVariableOp2p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2L
$gender-output/BiasAdd/ReadVariableOp$gender-output/BiasAdd/ReadVariableOp2J
#gender-output/MatMul/ReadVariableOp#gender-output/MatMul/ReadVariableOp2H
"race-output/BiasAdd/ReadVariableOp"race-output/BiasAdd/ReadVariableOp2F
!race-output/MatMul/ReadVariableOp!race-output/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252837

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј
Ѓ
+__inference_conv2d_19_layer_call_fn_1252782

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ

: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ


 
_user_specified_nameinputs
Ю

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252561

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252653

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


F__inference_conv2d_18_layer_call_and_return_conditional_losses_1252701

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
u
я
D__inference_model_2_layer_call_and_return_conditional_losses_1250968

inputs+
conv2d_15_1250732: 
conv2d_15_1250734: ,
batch_normalization_15_1250737: ,
batch_normalization_15_1250739: ,
batch_normalization_15_1250741: ,
batch_normalization_15_1250743: +
conv2d_16_1250759: @
conv2d_16_1250761:@,
batch_normalization_16_1250764:@,
batch_normalization_16_1250766:@,
batch_normalization_16_1250768:@,
batch_normalization_16_1250770:@,
conv2d_17_1250786:@ 
conv2d_17_1250788:	-
batch_normalization_17_1250791:	-
batch_normalization_17_1250793:	-
batch_normalization_17_1250795:	-
batch_normalization_17_1250797:	-
conv2d_18_1250813: 
conv2d_18_1250815:	-
batch_normalization_18_1250818:	-
batch_normalization_18_1250820:	-
batch_normalization_18_1250822:	-
batch_normalization_18_1250824:	-
conv2d_19_1250840: 
conv2d_19_1250842:	-
batch_normalization_19_1250845:	-
batch_normalization_19_1250847:	-
batch_normalization_19_1250849:	-
batch_normalization_19_1250851:	$
dense_11_1250868:

dense_11_1250870:	$
dense_10_1250885:

dense_10_1250887:	#
dense_9_1250909:

dense_9_1250911:	(
gender_output_1250926:	#
gender_output_1250928:&
race_output_1250943:	!
race_output_1250945:%
age_output_1250960:	 
age_output_1250962:
identity

identity_1

identity_2Ђ"age-output/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ.batch_normalization_18/StatefulPartitionedCallЂ.batch_normalization_19/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ%gender-output/StatefulPartitionedCallЂ#race-output/StatefulPartitionedCall
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_15_1250732conv2d_15_1250734*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731 
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_1250737batch_normalization_15_1250739batch_normalization_15_1250741batch_normalization_15_1250743*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250342
 max_pooling2d_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџbb * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393Ѕ
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_1250759conv2d_16_1250761*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_1250764batch_normalization_16_1250766batch_normalization_16_1250768batch_normalization_16_1250770*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250418
 max_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469І
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_1250786conv2d_17_1250788*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_1250791batch_normalization_17_1250793batch_normalization_17_1250795batch_normalization_17_1250797*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250494
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545І
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_1250813conv2d_18_1250815*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_1250818batch_normalization_18_1250820batch_normalization_18_1250822batch_normalization_18_1250824*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250570
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621І
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_1250840conv2d_19_1250842*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_19_1250845batch_normalization_19_1250847batch_normalization_19_1250849batch_normalization_19_1250851*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250646
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697ќ
&global_max_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710 
 dense_11/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_11_1250868dense_11_1250870*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867 
 dense_10/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_10_1250885dense_10_1250887*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884
dense_9/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_9_1250909dense_9_1250911*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908­
%gender-output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0gender_output_1250926gender_output_1250928*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925Ѕ
#race-output/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0race_output_1250943race_output_1250945*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942 
"age-output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0age_output_1250960age_output_1250962*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_age-output_layer_call_and_return_conditional_losses_1250959z
IdentityIdentity+age-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ}

Identity_1Identity,race-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

Identity_2Identity.gender-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^age-output/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^gender-output/StatefulPartitionedCall$^race-output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"age-output/StatefulPartitionedCall"age-output/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%gender-output/StatefulPartitionedCall%gender-output/StatefulPartitionedCall2J
#race-output/StatefulPartitionedCall#race-output/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250570

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
u
я
D__inference_model_2_layer_call_and_return_conditional_losses_1251376

inputs+
conv2d_15_1251267: 
conv2d_15_1251269: ,
batch_normalization_15_1251272: ,
batch_normalization_15_1251274: ,
batch_normalization_15_1251276: ,
batch_normalization_15_1251278: +
conv2d_16_1251282: @
conv2d_16_1251284:@,
batch_normalization_16_1251287:@,
batch_normalization_16_1251289:@,
batch_normalization_16_1251291:@,
batch_normalization_16_1251293:@,
conv2d_17_1251297:@ 
conv2d_17_1251299:	-
batch_normalization_17_1251302:	-
batch_normalization_17_1251304:	-
batch_normalization_17_1251306:	-
batch_normalization_17_1251308:	-
conv2d_18_1251312: 
conv2d_18_1251314:	-
batch_normalization_18_1251317:	-
batch_normalization_18_1251319:	-
batch_normalization_18_1251321:	-
batch_normalization_18_1251323:	-
conv2d_19_1251327: 
conv2d_19_1251329:	-
batch_normalization_19_1251332:	-
batch_normalization_19_1251334:	-
batch_normalization_19_1251336:	-
batch_normalization_19_1251338:	$
dense_11_1251343:

dense_11_1251345:	$
dense_10_1251348:

dense_10_1251350:	#
dense_9_1251353:

dense_9_1251355:	(
gender_output_1251358:	#
gender_output_1251360:&
race_output_1251363:	!
race_output_1251365:%
age_output_1251368:	 
age_output_1251370:
identity

identity_1

identity_2Ђ"age-output/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ.batch_normalization_18/StatefulPartitionedCallЂ.batch_normalization_19/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ%gender-output/StatefulPartitionedCallЂ#race-output/StatefulPartitionedCall
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_15_1251267conv2d_15_1251269*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_1251272batch_normalization_15_1251274batch_normalization_15_1251276batch_normalization_15_1251278*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250373
 max_pooling2d_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџbb * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393Ѕ
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_1251282conv2d_16_1251284*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_1251287batch_normalization_16_1251289batch_normalization_16_1251291batch_normalization_16_1251293*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250449
 max_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469І
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_1251297conv2d_17_1251299*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_1251302batch_normalization_17_1251304batch_normalization_17_1251306batch_normalization_17_1251308*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250525
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545І
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_1251312conv2d_18_1251314*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_1251317batch_normalization_18_1251319batch_normalization_18_1251321batch_normalization_18_1251323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250601
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621І
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_1251327conv2d_19_1251329*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_19_1251332batch_normalization_19_1251334batch_normalization_19_1251336batch_normalization_19_1251338*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250677
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697ќ
&global_max_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710 
 dense_11/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_11_1251343dense_11_1251345*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867 
 dense_10/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_10_1251348dense_10_1251350*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884
dense_9/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_9_1251353dense_9_1251355*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908­
%gender-output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0gender_output_1251358gender_output_1251360*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925Ѕ
#race-output/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0race_output_1251363race_output_1251365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942 
"age-output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0age_output_1251368age_output_1251370*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_age-output_layer_call_and_return_conditional_losses_1250959z
IdentityIdentity+age-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ}

Identity_1Identity,race-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

Identity_2Identity.gender-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^age-output/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^gender-output/StatefulPartitionedCall$^race-output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"age-output/StatefulPartitionedCall"age-output/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%gender-output/StatefulPartitionedCall%gender-output/StatefulPartitionedCall2J
#race-output/StatefulPartitionedCall#race-output/StatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
u
№
D__inference_model_2_layer_call_and_return_conditional_losses_1251784
input_4+
conv2d_15_1251675: 
conv2d_15_1251677: ,
batch_normalization_15_1251680: ,
batch_normalization_15_1251682: ,
batch_normalization_15_1251684: ,
batch_normalization_15_1251686: +
conv2d_16_1251690: @
conv2d_16_1251692:@,
batch_normalization_16_1251695:@,
batch_normalization_16_1251697:@,
batch_normalization_16_1251699:@,
batch_normalization_16_1251701:@,
conv2d_17_1251705:@ 
conv2d_17_1251707:	-
batch_normalization_17_1251710:	-
batch_normalization_17_1251712:	-
batch_normalization_17_1251714:	-
batch_normalization_17_1251716:	-
conv2d_18_1251720: 
conv2d_18_1251722:	-
batch_normalization_18_1251725:	-
batch_normalization_18_1251727:	-
batch_normalization_18_1251729:	-
batch_normalization_18_1251731:	-
conv2d_19_1251735: 
conv2d_19_1251737:	-
batch_normalization_19_1251740:	-
batch_normalization_19_1251742:	-
batch_normalization_19_1251744:	-
batch_normalization_19_1251746:	$
dense_11_1251751:

dense_11_1251753:	$
dense_10_1251756:

dense_10_1251758:	#
dense_9_1251761:

dense_9_1251763:	(
gender_output_1251766:	#
gender_output_1251768:&
race_output_1251771:	!
race_output_1251773:%
age_output_1251776:	 
age_output_1251778:
identity

identity_1

identity_2Ђ"age-output/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ.batch_normalization_18/StatefulPartitionedCallЂ.batch_normalization_19/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ%gender-output/StatefulPartitionedCallЂ#race-output/StatefulPartitionedCall
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_15_1251675conv2d_15_1251677*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_1251680batch_normalization_15_1251682batch_normalization_15_1251684batch_normalization_15_1251686*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250373
 max_pooling2d_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџbb * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393Ѕ
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_1251690conv2d_16_1251692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_1251695batch_normalization_16_1251697batch_normalization_16_1251699batch_normalization_16_1251701*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250449
 max_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469І
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_1251705conv2d_17_1251707*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_1251710batch_normalization_17_1251712batch_normalization_17_1251714batch_normalization_17_1251716*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250525
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545І
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_1251720conv2d_18_1251722*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_1251725batch_normalization_18_1251727batch_normalization_18_1251729batch_normalization_18_1251731*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250601
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621І
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_1251735conv2d_19_1251737*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_19_1251740batch_normalization_19_1251742batch_normalization_19_1251744batch_normalization_19_1251746*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250677
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697ќ
&global_max_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710 
 dense_11/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_11_1251751dense_11_1251753*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867 
 dense_10/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_10_1251756dense_10_1251758*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884
dense_9/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_9_1251761dense_9_1251763*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908­
%gender-output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0gender_output_1251766gender_output_1251768*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925Ѕ
#race-output/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0race_output_1251771race_output_1251773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942 
"age-output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0age_output_1251776age_output_1251778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_age-output_layer_call_and_return_conditional_losses_1250959z
IdentityIdentity+age-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ}

Identity_1Identity,race-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

Identity_2Identity.gender-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^age-output/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^gender-output/StatefulPartitionedCall$^race-output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"age-output/StatefulPartitionedCall"age-output/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%gender-output/StatefulPartitionedCall%gender-output/StatefulPartitionedCall2J
#race-output/StatefulPartitionedCall#race-output/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4

Ц
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250525

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ач
Ш)
"__inference__wrapped_model_1250320
input_4J
0model_2_conv2d_15_conv2d_readvariableop_resource: ?
1model_2_conv2d_15_biasadd_readvariableop_resource: D
6model_2_batch_normalization_15_readvariableop_resource: F
8model_2_batch_normalization_15_readvariableop_1_resource: U
Gmodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_resource: W
Imodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource: J
0model_2_conv2d_16_conv2d_readvariableop_resource: @?
1model_2_conv2d_16_biasadd_readvariableop_resource:@D
6model_2_batch_normalization_16_readvariableop_resource:@F
8model_2_batch_normalization_16_readvariableop_1_resource:@U
Gmodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@W
Imodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@K
0model_2_conv2d_17_conv2d_readvariableop_resource:@@
1model_2_conv2d_17_biasadd_readvariableop_resource:	E
6model_2_batch_normalization_17_readvariableop_resource:	G
8model_2_batch_normalization_17_readvariableop_1_resource:	V
Gmodel_2_batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	X
Imodel_2_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	L
0model_2_conv2d_18_conv2d_readvariableop_resource:@
1model_2_conv2d_18_biasadd_readvariableop_resource:	E
6model_2_batch_normalization_18_readvariableop_resource:	G
8model_2_batch_normalization_18_readvariableop_1_resource:	V
Gmodel_2_batch_normalization_18_fusedbatchnormv3_readvariableop_resource:	X
Imodel_2_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:	L
0model_2_conv2d_19_conv2d_readvariableop_resource:@
1model_2_conv2d_19_biasadd_readvariableop_resource:	E
6model_2_batch_normalization_19_readvariableop_resource:	G
8model_2_batch_normalization_19_readvariableop_1_resource:	V
Gmodel_2_batch_normalization_19_fusedbatchnormv3_readvariableop_resource:	X
Imodel_2_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:	C
/model_2_dense_11_matmul_readvariableop_resource:
?
0model_2_dense_11_biasadd_readvariableop_resource:	C
/model_2_dense_10_matmul_readvariableop_resource:
?
0model_2_dense_10_biasadd_readvariableop_resource:	B
.model_2_dense_9_matmul_readvariableop_resource:
>
/model_2_dense_9_biasadd_readvariableop_resource:	G
4model_2_gender_output_matmul_readvariableop_resource:	C
5model_2_gender_output_biasadd_readvariableop_resource:E
2model_2_race_output_matmul_readvariableop_resource:	A
3model_2_race_output_biasadd_readvariableop_resource:D
1model_2_age_output_matmul_readvariableop_resource:	@
2model_2_age_output_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђ)model_2/age-output/BiasAdd/ReadVariableOpЂ(model_2/age-output/MatMul/ReadVariableOpЂ>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ-model_2/batch_normalization_15/ReadVariableOpЂ/model_2/batch_normalization_15/ReadVariableOp_1Ђ>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpЂ@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Ђ-model_2/batch_normalization_16/ReadVariableOpЂ/model_2/batch_normalization_16/ReadVariableOp_1Ђ>model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpЂ@model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Ђ-model_2/batch_normalization_17/ReadVariableOpЂ/model_2/batch_normalization_17/ReadVariableOp_1Ђ>model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpЂ@model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Ђ-model_2/batch_normalization_18/ReadVariableOpЂ/model_2/batch_normalization_18/ReadVariableOp_1Ђ>model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpЂ@model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Ђ-model_2/batch_normalization_19/ReadVariableOpЂ/model_2/batch_normalization_19/ReadVariableOp_1Ђ(model_2/conv2d_15/BiasAdd/ReadVariableOpЂ'model_2/conv2d_15/Conv2D/ReadVariableOpЂ(model_2/conv2d_16/BiasAdd/ReadVariableOpЂ'model_2/conv2d_16/Conv2D/ReadVariableOpЂ(model_2/conv2d_17/BiasAdd/ReadVariableOpЂ'model_2/conv2d_17/Conv2D/ReadVariableOpЂ(model_2/conv2d_18/BiasAdd/ReadVariableOpЂ'model_2/conv2d_18/Conv2D/ReadVariableOpЂ(model_2/conv2d_19/BiasAdd/ReadVariableOpЂ'model_2/conv2d_19/Conv2D/ReadVariableOpЂ'model_2/dense_10/BiasAdd/ReadVariableOpЂ&model_2/dense_10/MatMul/ReadVariableOpЂ'model_2/dense_11/BiasAdd/ReadVariableOpЂ&model_2/dense_11/MatMul/ReadVariableOpЂ&model_2/dense_9/BiasAdd/ReadVariableOpЂ%model_2/dense_9/MatMul/ReadVariableOpЂ,model_2/gender-output/BiasAdd/ReadVariableOpЂ+model_2/gender-output/MatMul/ReadVariableOpЂ*model_2/race-output/BiasAdd/ReadVariableOpЂ)model_2/race-output/MatMul/ReadVariableOp 
'model_2/conv2d_15/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0С
model_2/conv2d_15/Conv2DConv2Dinput_4/model_2/conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ *
paddingVALID*
strides

(model_2/conv2d_15/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Е
model_2/conv2d_15/BiasAddBiasAdd!model_2/conv2d_15/Conv2D:output:00model_2/conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ ~
model_2/conv2d_15/ReluRelu"model_2/conv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџФФ  
-model_2/batch_normalization_15/ReadVariableOpReadVariableOp6model_2_batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype0Є
/model_2/batch_normalization_15/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype0Т
>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ц
@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ё
/model_2/batch_normalization_15/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_15/Relu:activations:05model_2/batch_normalization_15/ReadVariableOp:value:07model_2/batch_normalization_15/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџФФ : : : : :*
epsilon%o:*
is_training( Э
 model_2/max_pooling2d_15/MaxPoolMaxPool3model_2/batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџbb *
ksize
*
paddingVALID*
strides
 
'model_2/conv2d_16/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0с
model_2/conv2d_16/Conv2DConv2D)model_2/max_pooling2d_15/MaxPool:output:0/model_2/conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@*
paddingVALID*
strides

(model_2/conv2d_16/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Г
model_2/conv2d_16/BiasAddBiasAdd!model_2/conv2d_16/Conv2D:output:00model_2/conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@|
model_2/conv2d_16/ReluRelu"model_2/conv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``@ 
-model_2/batch_normalization_16/ReadVariableOpReadVariableOp6model_2_batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0Є
/model_2/batch_normalization_16/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0Т
>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ц
@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0я
/model_2/batch_normalization_16/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_16/Relu:activations:05model_2/batch_normalization_16/ReadVariableOp:value:07model_2/batch_normalization_16/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ``@:@:@:@:@:*
epsilon%o:*
is_training( Э
 model_2/max_pooling2d_16/MaxPoolMaxPool3model_2/batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ00@*
ksize
*
paddingVALID*
strides
Ё
'model_2/conv2d_17/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0т
model_2/conv2d_17/Conv2DConv2D)model_2/max_pooling2d_16/MaxPool:output:0/model_2/conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..*
paddingVALID*
strides

(model_2/conv2d_17/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Д
model_2/conv2d_17/BiasAddBiasAdd!model_2/conv2d_17/Conv2D:output:00model_2/conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..}
model_2/conv2d_17/ReluRelu"model_2/conv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ..Ё
-model_2/batch_normalization_17/ReadVariableOpReadVariableOp6model_2_batch_normalization_17_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
/model_2/batch_normalization_17/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0У
>model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Ч
@model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0є
/model_2/batch_normalization_17/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_17/Relu:activations:05model_2/batch_normalization_17/ReadVariableOp:value:07model_2/batch_normalization_17/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ..:::::*
epsilon%o:*
is_training( Ю
 model_2/max_pooling2d_17/MaxPoolMaxPool3model_2/batch_normalization_17/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
Ђ
'model_2/conv2d_18/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0т
model_2/conv2d_18/Conv2DConv2D)model_2/max_pooling2d_17/MaxPool:output:0/model_2/conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

(model_2/conv2d_18/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Д
model_2/conv2d_18/BiasAddBiasAdd!model_2/conv2d_18/Conv2D:output:00model_2/conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ}
model_2/conv2d_18/ReluRelu"model_2/conv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџЁ
-model_2/batch_normalization_18/ReadVariableOpReadVariableOp6model_2_batch_normalization_18_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
/model_2/batch_normalization_18/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0У
>model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Ч
@model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0є
/model_2/batch_normalization_18/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_18/Relu:activations:05model_2/batch_normalization_18/ReadVariableOp:value:07model_2/batch_normalization_18/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( Ю
 model_2/max_pooling2d_18/MaxPoolMaxPool3model_2/batch_normalization_18/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ

*
ksize
*
paddingVALID*
strides
Ђ
'model_2/conv2d_19/Conv2D/ReadVariableOpReadVariableOp0model_2_conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0т
model_2/conv2d_19/Conv2DConv2D)model_2/max_pooling2d_18/MaxPool:output:0/model_2/conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

(model_2/conv2d_19/BiasAdd/ReadVariableOpReadVariableOp1model_2_conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Д
model_2/conv2d_19/BiasAddBiasAdd!model_2/conv2d_19/Conv2D:output:00model_2/conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ}
model_2/conv2d_19/ReluRelu"model_2/conv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџЁ
-model_2/batch_normalization_19/ReadVariableOpReadVariableOp6model_2_batch_normalization_19_readvariableop_resource*
_output_shapes	
:*
dtype0Ѕ
/model_2/batch_normalization_19/ReadVariableOp_1ReadVariableOp8model_2_batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0У
>model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOpGmodel_2_batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0Ч
@model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpImodel_2_batch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0є
/model_2/batch_normalization_19/FusedBatchNormV3FusedBatchNormV3$model_2/conv2d_19/Relu:activations:05model_2/batch_normalization_19/ReadVariableOp:value:07model_2/batch_normalization_19/ReadVariableOp_1:value:0Fmodel_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0Hmodel_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
is_training( Ю
 model_2/max_pooling2d_19/MaxPoolMaxPool3model_2/batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

4model_2/global_max_pooling2d_3/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ц
"model_2/global_max_pooling2d_3/MaxMax)model_2/max_pooling2d_19/MaxPool:output:0=model_2/global_max_pooling2d_3/Max/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_2/dense_11/MatMul/ReadVariableOpReadVariableOp/model_2_dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Б
model_2/dense_11/MatMulMatMul+model_2/global_max_pooling2d_3/Max:output:0.model_2/dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'model_2/dense_11/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Њ
model_2/dense_11/BiasAddBiasAdd!model_2/dense_11/MatMul:product:0/model_2/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
model_2/dense_11/ReluRelu!model_2/dense_11/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_2/dense_10/MatMul/ReadVariableOpReadVariableOp/model_2_dense_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Б
model_2/dense_10/MatMulMatMul+model_2/global_max_pooling2d_3/Max:output:0.model_2/dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'model_2/dense_10/BiasAdd/ReadVariableOpReadVariableOp0model_2_dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Њ
model_2/dense_10/BiasAddBiasAdd!model_2/dense_10/MatMul:product:0/model_2/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
model_2/dense_10/ReluRelu!model_2/dense_10/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
%model_2/dense_9/MatMul/ReadVariableOpReadVariableOp.model_2_dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Џ
model_2/dense_9/MatMulMatMul+model_2/global_max_pooling2d_3/Max:output:0-model_2/dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
&model_2/dense_9/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ї
model_2/dense_9/BiasAddBiasAdd model_2/dense_9/MatMul:product:0.model_2/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџY
model_2/dense_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
model_2/dense_9/mulMulmodel_2/dense_9/beta:output:0 model_2/dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџn
model_2/dense_9/SigmoidSigmoidmodel_2/dense_9/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџ
model_2/dense_9/mul_1Mul model_2/dense_9/BiasAdd:output:0model_2/dense_9/Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџr
model_2/dense_9/IdentityIdentitymodel_2/dense_9/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџн
model_2/dense_9/IdentityN	IdentityNmodel_2/dense_9/mul_1:z:0 model_2/dense_9/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1250289*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџЁ
+model_2/gender-output/MatMul/ReadVariableOpReadVariableOp4model_2_gender_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0В
model_2/gender-output/MatMulMatMul#model_2/dense_11/Relu:activations:03model_2/gender-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
,model_2/gender-output/BiasAdd/ReadVariableOpReadVariableOp5model_2_gender_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0И
model_2/gender-output/BiasAddBiasAdd&model_2/gender-output/MatMul:product:04model_2/gender-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
model_2/gender-output/SoftmaxSoftmax&model_2/gender-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
)model_2/race-output/MatMul/ReadVariableOpReadVariableOp2model_2_race_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ў
model_2/race-output/MatMulMatMul#model_2/dense_10/Relu:activations:01model_2/race-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
*model_2/race-output/BiasAdd/ReadVariableOpReadVariableOp3model_2_race_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0В
model_2/race-output/BiasAddBiasAdd$model_2/race-output/MatMul:product:02model_2/race-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ~
model_2/race-output/SoftmaxSoftmax$model_2/race-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
(model_2/age-output/MatMul/ReadVariableOpReadVariableOp1model_2_age_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ћ
model_2/age-output/MatMulMatMul"model_2/dense_9/IdentityN:output:00model_2/age-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
)model_2/age-output/BiasAdd/ReadVariableOpReadVariableOp2model_2_age_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Џ
model_2/age-output/BiasAddBiasAdd#model_2/age-output/MatMul:product:01model_2/age-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ|
model_2/age-output/SigmoidSigmoid#model_2/age-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџm
IdentityIdentitymodel_2/age-output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџx

Identity_1Identity'model_2/gender-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџv

Identity_2Identity%model_2/race-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџё
NoOpNoOp*^model_2/age-output/BiasAdd/ReadVariableOp)^model_2/age-output/MatMul/ReadVariableOp?^model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_15/ReadVariableOp0^model_2/batch_normalization_15/ReadVariableOp_1?^model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_16/ReadVariableOp0^model_2/batch_normalization_16/ReadVariableOp_1?^model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_17/ReadVariableOp0^model_2/batch_normalization_17/ReadVariableOp_1?^model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_18/ReadVariableOp0^model_2/batch_normalization_18/ReadVariableOp_1?^model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOpA^model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1.^model_2/batch_normalization_19/ReadVariableOp0^model_2/batch_normalization_19/ReadVariableOp_1)^model_2/conv2d_15/BiasAdd/ReadVariableOp(^model_2/conv2d_15/Conv2D/ReadVariableOp)^model_2/conv2d_16/BiasAdd/ReadVariableOp(^model_2/conv2d_16/Conv2D/ReadVariableOp)^model_2/conv2d_17/BiasAdd/ReadVariableOp(^model_2/conv2d_17/Conv2D/ReadVariableOp)^model_2/conv2d_18/BiasAdd/ReadVariableOp(^model_2/conv2d_18/Conv2D/ReadVariableOp)^model_2/conv2d_19/BiasAdd/ReadVariableOp(^model_2/conv2d_19/Conv2D/ReadVariableOp(^model_2/dense_10/BiasAdd/ReadVariableOp'^model_2/dense_10/MatMul/ReadVariableOp(^model_2/dense_11/BiasAdd/ReadVariableOp'^model_2/dense_11/MatMul/ReadVariableOp'^model_2/dense_9/BiasAdd/ReadVariableOp&^model_2/dense_9/MatMul/ReadVariableOp-^model_2/gender-output/BiasAdd/ReadVariableOp,^model_2/gender-output/MatMul/ReadVariableOp+^model_2/race-output/BiasAdd/ReadVariableOp*^model_2/race-output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)model_2/age-output/BiasAdd/ReadVariableOp)model_2/age-output/BiasAdd/ReadVariableOp2T
(model_2/age-output/MatMul/ReadVariableOp(model_2/age-output/MatMul/ReadVariableOp2
>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp2
@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_15/ReadVariableOp-model_2/batch_normalization_15/ReadVariableOp2b
/model_2/batch_normalization_15/ReadVariableOp_1/model_2/batch_normalization_15/ReadVariableOp_12
>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp2
@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_16/ReadVariableOp-model_2/batch_normalization_16/ReadVariableOp2b
/model_2/batch_normalization_16/ReadVariableOp_1/model_2/batch_normalization_16/ReadVariableOp_12
>model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp2
@model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_17/ReadVariableOp-model_2/batch_normalization_17/ReadVariableOp2b
/model_2/batch_normalization_17/ReadVariableOp_1/model_2/batch_normalization_17/ReadVariableOp_12
>model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp2
@model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_18/ReadVariableOp-model_2/batch_normalization_18/ReadVariableOp2b
/model_2/batch_normalization_18/ReadVariableOp_1/model_2/batch_normalization_18/ReadVariableOp_12
>model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp>model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp2
@model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1@model_2/batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12^
-model_2/batch_normalization_19/ReadVariableOp-model_2/batch_normalization_19/ReadVariableOp2b
/model_2/batch_normalization_19/ReadVariableOp_1/model_2/batch_normalization_19/ReadVariableOp_12T
(model_2/conv2d_15/BiasAdd/ReadVariableOp(model_2/conv2d_15/BiasAdd/ReadVariableOp2R
'model_2/conv2d_15/Conv2D/ReadVariableOp'model_2/conv2d_15/Conv2D/ReadVariableOp2T
(model_2/conv2d_16/BiasAdd/ReadVariableOp(model_2/conv2d_16/BiasAdd/ReadVariableOp2R
'model_2/conv2d_16/Conv2D/ReadVariableOp'model_2/conv2d_16/Conv2D/ReadVariableOp2T
(model_2/conv2d_17/BiasAdd/ReadVariableOp(model_2/conv2d_17/BiasAdd/ReadVariableOp2R
'model_2/conv2d_17/Conv2D/ReadVariableOp'model_2/conv2d_17/Conv2D/ReadVariableOp2T
(model_2/conv2d_18/BiasAdd/ReadVariableOp(model_2/conv2d_18/BiasAdd/ReadVariableOp2R
'model_2/conv2d_18/Conv2D/ReadVariableOp'model_2/conv2d_18/Conv2D/ReadVariableOp2T
(model_2/conv2d_19/BiasAdd/ReadVariableOp(model_2/conv2d_19/BiasAdd/ReadVariableOp2R
'model_2/conv2d_19/Conv2D/ReadVariableOp'model_2/conv2d_19/Conv2D/ReadVariableOp2R
'model_2/dense_10/BiasAdd/ReadVariableOp'model_2/dense_10/BiasAdd/ReadVariableOp2P
&model_2/dense_10/MatMul/ReadVariableOp&model_2/dense_10/MatMul/ReadVariableOp2R
'model_2/dense_11/BiasAdd/ReadVariableOp'model_2/dense_11/BiasAdd/ReadVariableOp2P
&model_2/dense_11/MatMul/ReadVariableOp&model_2/dense_11/MatMul/ReadVariableOp2P
&model_2/dense_9/BiasAdd/ReadVariableOp&model_2/dense_9/BiasAdd/ReadVariableOp2N
%model_2/dense_9/MatMul/ReadVariableOp%model_2/dense_9/MatMul/ReadVariableOp2\
,model_2/gender-output/BiasAdd/ReadVariableOp,model_2/gender-output/BiasAdd/ReadVariableOp2Z
+model_2/gender-output/MatMul/ReadVariableOp+model_2/gender-output/MatMul/ReadVariableOp2X
*model_2/race-output/BiasAdd/ReadVariableOp*model_2/race-output/BiasAdd/ReadVariableOp2V
)model_2/race-output/MatMul/ReadVariableOp)model_2/race-output/MatMul/ReadVariableOp:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4

i
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1252773

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѓ№
у'
D__inference_model_2_layer_call_and_return_conditional_losses_1252405

inputsB
(conv2d_15_conv2d_readvariableop_resource: 7
)conv2d_15_biasadd_readvariableop_resource: <
.batch_normalization_15_readvariableop_resource: >
0batch_normalization_15_readvariableop_1_resource: M
?batch_normalization_15_fusedbatchnormv3_readvariableop_resource: O
Abatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource: B
(conv2d_16_conv2d_readvariableop_resource: @7
)conv2d_16_biasadd_readvariableop_resource:@<
.batch_normalization_16_readvariableop_resource:@>
0batch_normalization_16_readvariableop_1_resource:@M
?batch_normalization_16_fusedbatchnormv3_readvariableop_resource:@O
Abatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource:@C
(conv2d_17_conv2d_readvariableop_resource:@8
)conv2d_17_biasadd_readvariableop_resource:	=
.batch_normalization_17_readvariableop_resource:	?
0batch_normalization_17_readvariableop_1_resource:	N
?batch_normalization_17_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource:	D
(conv2d_18_conv2d_readvariableop_resource:8
)conv2d_18_biasadd_readvariableop_resource:	=
.batch_normalization_18_readvariableop_resource:	?
0batch_normalization_18_readvariableop_1_resource:	N
?batch_normalization_18_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource:	D
(conv2d_19_conv2d_readvariableop_resource:8
)conv2d_19_biasadd_readvariableop_resource:	=
.batch_normalization_19_readvariableop_resource:	?
0batch_normalization_19_readvariableop_1_resource:	N
?batch_normalization_19_fusedbatchnormv3_readvariableop_resource:	P
Abatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource:	;
'dense_11_matmul_readvariableop_resource:
7
(dense_11_biasadd_readvariableop_resource:	;
'dense_10_matmul_readvariableop_resource:
7
(dense_10_biasadd_readvariableop_resource:	:
&dense_9_matmul_readvariableop_resource:
6
'dense_9_biasadd_readvariableop_resource:	?
,gender_output_matmul_readvariableop_resource:	;
-gender_output_biasadd_readvariableop_resource:=
*race_output_matmul_readvariableop_resource:	9
+race_output_biasadd_readvariableop_resource:<
)age_output_matmul_readvariableop_resource:	8
*age_output_biasadd_readvariableop_resource:
identity

identity_1

identity_2Ђ!age-output/BiasAdd/ReadVariableOpЂ age-output/MatMul/ReadVariableOpЂ%batch_normalization_15/AssignNewValueЂ'batch_normalization_15/AssignNewValue_1Ђ6batch_normalization_15/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_15/ReadVariableOpЂ'batch_normalization_15/ReadVariableOp_1Ђ%batch_normalization_16/AssignNewValueЂ'batch_normalization_16/AssignNewValue_1Ђ6batch_normalization_16/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_16/ReadVariableOpЂ'batch_normalization_16/ReadVariableOp_1Ђ%batch_normalization_17/AssignNewValueЂ'batch_normalization_17/AssignNewValue_1Ђ6batch_normalization_17/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_17/ReadVariableOpЂ'batch_normalization_17/ReadVariableOp_1Ђ%batch_normalization_18/AssignNewValueЂ'batch_normalization_18/AssignNewValue_1Ђ6batch_normalization_18/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_18/ReadVariableOpЂ'batch_normalization_18/ReadVariableOp_1Ђ%batch_normalization_19/AssignNewValueЂ'batch_normalization_19/AssignNewValue_1Ђ6batch_normalization_19/FusedBatchNormV3/ReadVariableOpЂ8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1Ђ%batch_normalization_19/ReadVariableOpЂ'batch_normalization_19/ReadVariableOp_1Ђ conv2d_15/BiasAdd/ReadVariableOpЂconv2d_15/Conv2D/ReadVariableOpЂ conv2d_16/BiasAdd/ReadVariableOpЂconv2d_16/Conv2D/ReadVariableOpЂ conv2d_17/BiasAdd/ReadVariableOpЂconv2d_17/Conv2D/ReadVariableOpЂ conv2d_18/BiasAdd/ReadVariableOpЂconv2d_18/Conv2D/ReadVariableOpЂ conv2d_19/BiasAdd/ReadVariableOpЂconv2d_19/Conv2D/ReadVariableOpЂdense_10/BiasAdd/ReadVariableOpЂdense_10/MatMul/ReadVariableOpЂdense_11/BiasAdd/ReadVariableOpЂdense_11/MatMul/ReadVariableOpЂdense_9/BiasAdd/ReadVariableOpЂdense_9/MatMul/ReadVariableOpЂ$gender-output/BiasAdd/ReadVariableOpЂ#gender-output/MatMul/ReadVariableOpЂ"race-output/BiasAdd/ReadVariableOpЂ!race-output/MatMul/ReadVariableOp
conv2d_15/Conv2D/ReadVariableOpReadVariableOp(conv2d_15_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0А
conv2d_15/Conv2DConv2Dinputs'conv2d_15/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ *
paddingVALID*
strides

 conv2d_15/BiasAdd/ReadVariableOpReadVariableOp)conv2d_15_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_15/BiasAddBiasAddconv2d_15/Conv2D:output:0(conv2d_15/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ n
conv2d_15/ReluReluconv2d_15/BiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџФФ 
%batch_normalization_15/ReadVariableOpReadVariableOp.batch_normalization_15_readvariableop_resource*
_output_shapes
: *
dtype0
'batch_normalization_15/ReadVariableOp_1ReadVariableOp0batch_normalization_15_readvariableop_1_resource*
_output_shapes
: *
dtype0В
6batch_normalization_15/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0Ж
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Я
'batch_normalization_15/FusedBatchNormV3FusedBatchNormV3conv2d_15/Relu:activations:0-batch_normalization_15/ReadVariableOp:value:0/batch_normalization_15/ReadVariableOp_1:value:0>batch_normalization_15/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:џџџџџџџџџФФ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_15/AssignNewValueAssignVariableOp?batch_normalization_15_fusedbatchnormv3_readvariableop_resource4batch_normalization_15/FusedBatchNormV3:batch_mean:07^batch_normalization_15/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_15/AssignNewValue_1AssignVariableOpAbatch_normalization_15_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_15/FusedBatchNormV3:batch_variance:09^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Н
max_pooling2d_15/MaxPoolMaxPool+batch_normalization_15/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџbb *
ksize
*
paddingVALID*
strides

conv2d_16/Conv2D/ReadVariableOpReadVariableOp(conv2d_16_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
conv2d_16/Conv2DConv2D!max_pooling2d_15/MaxPool:output:0'conv2d_16/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@*
paddingVALID*
strides

 conv2d_16/BiasAdd/ReadVariableOpReadVariableOp)conv2d_16_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
conv2d_16/BiasAddBiasAddconv2d_16/Conv2D:output:0(conv2d_16/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@l
conv2d_16/ReluReluconv2d_16/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``@
%batch_normalization_16/ReadVariableOpReadVariableOp.batch_normalization_16_readvariableop_resource*
_output_shapes
:@*
dtype0
'batch_normalization_16/ReadVariableOp_1ReadVariableOp0batch_normalization_16_readvariableop_1_resource*
_output_shapes
:@*
dtype0В
6batch_normalization_16/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0Ж
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Э
'batch_normalization_16/FusedBatchNormV3FusedBatchNormV3conv2d_16/Relu:activations:0-batch_normalization_16/ReadVariableOp:value:0/batch_normalization_16/ReadVariableOp_1:value:0>batch_normalization_16/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ``@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_16/AssignNewValueAssignVariableOp?batch_normalization_16_fusedbatchnormv3_readvariableop_resource4batch_normalization_16/FusedBatchNormV3:batch_mean:07^batch_normalization_16/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_16/AssignNewValue_1AssignVariableOpAbatch_normalization_16_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_16/FusedBatchNormV3:batch_variance:09^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(Н
max_pooling2d_16/MaxPoolMaxPool+batch_normalization_16/FusedBatchNormV3:y:0*/
_output_shapes
:џџџџџџџџџ00@*
ksize
*
paddingVALID*
strides

conv2d_17/Conv2D/ReadVariableOpReadVariableOp(conv2d_17_conv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0Ъ
conv2d_17/Conv2DConv2D!max_pooling2d_16/MaxPool:output:0'conv2d_17/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..*
paddingVALID*
strides

 conv2d_17/BiasAdd/ReadVariableOpReadVariableOp)conv2d_17_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_17/BiasAddBiasAddconv2d_17/Conv2D:output:0(conv2d_17/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..m
conv2d_17/ReluReluconv2d_17/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ..
%batch_normalization_17/ReadVariableOpReadVariableOp.batch_normalization_17_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_17/ReadVariableOp_1ReadVariableOp0batch_normalization_17_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_17/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0в
'batch_normalization_17/FusedBatchNormV3FusedBatchNormV3conv2d_17/Relu:activations:0-batch_normalization_17/ReadVariableOp:value:0/batch_normalization_17/ReadVariableOp_1:value:0>batch_normalization_17/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ..:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_17/AssignNewValueAssignVariableOp?batch_normalization_17_fusedbatchnormv3_readvariableop_resource4batch_normalization_17/FusedBatchNormV3:batch_mean:07^batch_normalization_17/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_17/AssignNewValue_1AssignVariableOpAbatch_normalization_17_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_17/FusedBatchNormV3:batch_variance:09^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(О
max_pooling2d_17/MaxPoolMaxPool+batch_normalization_17/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides

conv2d_18/Conv2D/ReadVariableOpReadVariableOp(conv2d_18_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
conv2d_18/Conv2DConv2D!max_pooling2d_17/MaxPool:output:0'conv2d_18/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

 conv2d_18/BiasAdd/ReadVariableOpReadVariableOp)conv2d_18_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_18/BiasAddBiasAddconv2d_18/Conv2D:output:0(conv2d_18/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџm
conv2d_18/ReluReluconv2d_18/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
%batch_normalization_18/ReadVariableOpReadVariableOp.batch_normalization_18_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_18/ReadVariableOp_1ReadVariableOp0batch_normalization_18_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_18/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0в
'batch_normalization_18/FusedBatchNormV3FusedBatchNormV3conv2d_18/Relu:activations:0-batch_normalization_18/ReadVariableOp:value:0/batch_normalization_18/ReadVariableOp_1:value:0>batch_normalization_18/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_18/AssignNewValueAssignVariableOp?batch_normalization_18_fusedbatchnormv3_readvariableop_resource4batch_normalization_18/FusedBatchNormV3:batch_mean:07^batch_normalization_18/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_18/AssignNewValue_1AssignVariableOpAbatch_normalization_18_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_18/FusedBatchNormV3:batch_variance:09^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(О
max_pooling2d_18/MaxPoolMaxPool+batch_normalization_18/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ

*
ksize
*
paddingVALID*
strides

conv2d_19/Conv2D/ReadVariableOpReadVariableOp(conv2d_19_conv2d_readvariableop_resource*(
_output_shapes
:*
dtype0Ъ
conv2d_19/Conv2DConv2D!max_pooling2d_18/MaxPool:output:0'conv2d_19/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides

 conv2d_19/BiasAdd/ReadVariableOpReadVariableOp)conv2d_19_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
conv2d_19/BiasAddBiasAddconv2d_19/Conv2D:output:0(conv2d_19/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџm
conv2d_19/ReluReluconv2d_19/BiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ
%batch_normalization_19/ReadVariableOpReadVariableOp.batch_normalization_19_readvariableop_resource*
_output_shapes	
:*
dtype0
'batch_normalization_19/ReadVariableOp_1ReadVariableOp0batch_normalization_19_readvariableop_1_resource*
_output_shapes	
:*
dtype0Г
6batch_normalization_19/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0З
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0в
'batch_normalization_19/FusedBatchNormV3FusedBatchNormV3conv2d_19/Relu:activations:0-batch_normalization_19/ReadVariableOp:value:0/batch_normalization_19/ReadVariableOp_1:value:0>batch_normalization_19/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:џџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ђ
%batch_normalization_19/AssignNewValueAssignVariableOp?batch_normalization_19_fusedbatchnormv3_readvariableop_resource4batch_normalization_19/FusedBatchNormV3:batch_mean:07^batch_normalization_19/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(Ќ
'batch_normalization_19/AssignNewValue_1AssignVariableOpAbatch_normalization_19_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_19/FusedBatchNormV3:batch_variance:09^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(О
max_pooling2d_19/MaxPoolMaxPool+batch_normalization_19/FusedBatchNormV3:y:0*0
_output_shapes
:џџџџџџџџџ*
ksize
*
paddingVALID*
strides
}
,global_max_pooling2d_3/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      Ў
global_max_pooling2d_3/MaxMax!max_pooling2d_19/MaxPool:output:05global_max_pooling2d_3/Max/reduction_indices:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_11/MatMulMatMul#global_max_pooling2d_3/Max:output:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
dense_11/ReluReludense_11/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_10/MatMulMatMul#global_max_pooling2d_3/Max:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџc
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_9/MatMulMatMul#global_max_pooling2d_3/Max:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
dense_9/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?v
dense_9/mulMuldense_9/beta:output:0dense_9/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ^
dense_9/SigmoidSigmoiddense_9/mul:z:0*
T0*(
_output_shapes
:џџџџџџџџџv
dense_9/mul_1Muldense_9/BiasAdd:output:0dense_9/Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџb
dense_9/IdentityIdentitydense_9/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџХ
dense_9/IdentityN	IdentityNdense_9/mul_1:z:0dense_9/BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1252374*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџ
#gender-output/MatMul/ReadVariableOpReadVariableOp,gender_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
gender-output/MatMulMatMuldense_11/Relu:activations:0+gender-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
$gender-output/BiasAdd/ReadVariableOpReadVariableOp-gender_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0 
gender-output/BiasAddBiasAddgender-output/MatMul:product:0,gender-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
gender-output/SoftmaxSoftmaxgender-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
!race-output/MatMul/ReadVariableOpReadVariableOp*race_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
race-output/MatMulMatMuldense_10/Relu:activations:0)race-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
"race-output/BiasAdd/ReadVariableOpReadVariableOp+race_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
race-output/BiasAddBiasAddrace-output/MatMul:product:0*race-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџn
race-output/SoftmaxSoftmaxrace-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
 age-output/MatMul/ReadVariableOpReadVariableOp)age_output_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
age-output/MatMulMatMuldense_9/IdentityN:output:0(age-output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
!age-output/BiasAdd/ReadVariableOpReadVariableOp*age_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
age-output/BiasAddBiasAddage-output/MatMul:product:0)age-output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџl
age-output/SigmoidSigmoidage-output/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџe
IdentityIdentityage-output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџn

Identity_1Identityrace-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџp

Identity_2Identitygender-output/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЛ
NoOpNoOp"^age-output/BiasAdd/ReadVariableOp!^age-output/MatMul/ReadVariableOp&^batch_normalization_15/AssignNewValue(^batch_normalization_15/AssignNewValue_17^batch_normalization_15/FusedBatchNormV3/ReadVariableOp9^batch_normalization_15/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_15/ReadVariableOp(^batch_normalization_15/ReadVariableOp_1&^batch_normalization_16/AssignNewValue(^batch_normalization_16/AssignNewValue_17^batch_normalization_16/FusedBatchNormV3/ReadVariableOp9^batch_normalization_16/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_16/ReadVariableOp(^batch_normalization_16/ReadVariableOp_1&^batch_normalization_17/AssignNewValue(^batch_normalization_17/AssignNewValue_17^batch_normalization_17/FusedBatchNormV3/ReadVariableOp9^batch_normalization_17/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_17/ReadVariableOp(^batch_normalization_17/ReadVariableOp_1&^batch_normalization_18/AssignNewValue(^batch_normalization_18/AssignNewValue_17^batch_normalization_18/FusedBatchNormV3/ReadVariableOp9^batch_normalization_18/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_18/ReadVariableOp(^batch_normalization_18/ReadVariableOp_1&^batch_normalization_19/AssignNewValue(^batch_normalization_19/AssignNewValue_17^batch_normalization_19/FusedBatchNormV3/ReadVariableOp9^batch_normalization_19/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_19/ReadVariableOp(^batch_normalization_19/ReadVariableOp_1!^conv2d_15/BiasAdd/ReadVariableOp ^conv2d_15/Conv2D/ReadVariableOp!^conv2d_16/BiasAdd/ReadVariableOp ^conv2d_16/Conv2D/ReadVariableOp!^conv2d_17/BiasAdd/ReadVariableOp ^conv2d_17/Conv2D/ReadVariableOp!^conv2d_18/BiasAdd/ReadVariableOp ^conv2d_18/Conv2D/ReadVariableOp!^conv2d_19/BiasAdd/ReadVariableOp ^conv2d_19/Conv2D/ReadVariableOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp%^gender-output/BiasAdd/ReadVariableOp$^gender-output/MatMul/ReadVariableOp#^race-output/BiasAdd/ReadVariableOp"^race-output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2F
!age-output/BiasAdd/ReadVariableOp!age-output/BiasAdd/ReadVariableOp2D
 age-output/MatMul/ReadVariableOp age-output/MatMul/ReadVariableOp2N
%batch_normalization_15/AssignNewValue%batch_normalization_15/AssignNewValue2R
'batch_normalization_15/AssignNewValue_1'batch_normalization_15/AssignNewValue_12p
6batch_normalization_15/FusedBatchNormV3/ReadVariableOp6batch_normalization_15/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_15/FusedBatchNormV3/ReadVariableOp_18batch_normalization_15/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_15/ReadVariableOp%batch_normalization_15/ReadVariableOp2R
'batch_normalization_15/ReadVariableOp_1'batch_normalization_15/ReadVariableOp_12N
%batch_normalization_16/AssignNewValue%batch_normalization_16/AssignNewValue2R
'batch_normalization_16/AssignNewValue_1'batch_normalization_16/AssignNewValue_12p
6batch_normalization_16/FusedBatchNormV3/ReadVariableOp6batch_normalization_16/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_16/FusedBatchNormV3/ReadVariableOp_18batch_normalization_16/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_16/ReadVariableOp%batch_normalization_16/ReadVariableOp2R
'batch_normalization_16/ReadVariableOp_1'batch_normalization_16/ReadVariableOp_12N
%batch_normalization_17/AssignNewValue%batch_normalization_17/AssignNewValue2R
'batch_normalization_17/AssignNewValue_1'batch_normalization_17/AssignNewValue_12p
6batch_normalization_17/FusedBatchNormV3/ReadVariableOp6batch_normalization_17/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_17/FusedBatchNormV3/ReadVariableOp_18batch_normalization_17/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_17/ReadVariableOp%batch_normalization_17/ReadVariableOp2R
'batch_normalization_17/ReadVariableOp_1'batch_normalization_17/ReadVariableOp_12N
%batch_normalization_18/AssignNewValue%batch_normalization_18/AssignNewValue2R
'batch_normalization_18/AssignNewValue_1'batch_normalization_18/AssignNewValue_12p
6batch_normalization_18/FusedBatchNormV3/ReadVariableOp6batch_normalization_18/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_18/FusedBatchNormV3/ReadVariableOp_18batch_normalization_18/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_18/ReadVariableOp%batch_normalization_18/ReadVariableOp2R
'batch_normalization_18/ReadVariableOp_1'batch_normalization_18/ReadVariableOp_12N
%batch_normalization_19/AssignNewValue%batch_normalization_19/AssignNewValue2R
'batch_normalization_19/AssignNewValue_1'batch_normalization_19/AssignNewValue_12p
6batch_normalization_19/FusedBatchNormV3/ReadVariableOp6batch_normalization_19/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_19/FusedBatchNormV3/ReadVariableOp_18batch_normalization_19/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_19/ReadVariableOp%batch_normalization_19/ReadVariableOp2R
'batch_normalization_19/ReadVariableOp_1'batch_normalization_19/ReadVariableOp_12D
 conv2d_15/BiasAdd/ReadVariableOp conv2d_15/BiasAdd/ReadVariableOp2B
conv2d_15/Conv2D/ReadVariableOpconv2d_15/Conv2D/ReadVariableOp2D
 conv2d_16/BiasAdd/ReadVariableOp conv2d_16/BiasAdd/ReadVariableOp2B
conv2d_16/Conv2D/ReadVariableOpconv2d_16/Conv2D/ReadVariableOp2D
 conv2d_17/BiasAdd/ReadVariableOp conv2d_17/BiasAdd/ReadVariableOp2B
conv2d_17/Conv2D/ReadVariableOpconv2d_17/Conv2D/ReadVariableOp2D
 conv2d_18/BiasAdd/ReadVariableOp conv2d_18/BiasAdd/ReadVariableOp2B
conv2d_18/Conv2D/ReadVariableOpconv2d_18/Conv2D/ReadVariableOp2D
 conv2d_19/BiasAdd/ReadVariableOp conv2d_19/BiasAdd/ReadVariableOp2B
conv2d_19/Conv2D/ReadVariableOpconv2d_19/Conv2D/ReadVariableOp2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2L
$gender-output/BiasAdd/ReadVariableOp$gender-output/BiasAdd/ReadVariableOp2J
#gender-output/MatMul/ReadVariableOp#gender-output/MatMul/ReadVariableOp2H
"race-output/BiasAdd/ReadVariableOp"race-output/BiasAdd/ReadVariableOp2F
!race-output/MatMul/ReadVariableOp!race-output/MatMul/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1252497

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
а

-__inference_race-output_layer_call_fn_1252972

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Е
Ў

)__inference_model_2_layer_call_fn_1251560
input_4!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:


unknown_30:	

unknown_31:


unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:

unknown_37:	

unknown_38:

unknown_39:	

unknown_40:
identity

identity_1

identity_2ЂStatefulPartitionedCallЂ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1251376o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4

i
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1252865

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј

њ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
н

$__inference_internal_grad_fn_1253248
result_grads_0
result_grads_1
mul_dense_9_beta
mul_dense_9_biasadd
identityu
mulMulmul_dense_9_betamul_dense_9_biasadd^result_grads_0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџf
mul_1Mulmul_dense_9_betamul_dense_9_biasadd*
T0*(
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџS
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџU
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:џџџџџџџџџZ
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Q
_input_shapes@
>:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:X T
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ

Т
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250449

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs


F__inference_conv2d_17_layer_call_and_return_conditional_losses_1252609

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ..j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ..w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00@
 
_user_specified_nameinputs
Њ

ќ
J__inference_gender-output_layer_call_and_return_conditional_losses_1253003

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250677

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

T
8__inference_global_max_pooling2d_3_layer_call_fn_1252870

inputs
identityЪ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
љ
 
+__inference_conv2d_15_layer_call_fn_1252414

inputs!
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџФФ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџЦЦ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
 	
з
8__inference_batch_normalization_19_layer_call_fn_1252806

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250646
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ

: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ


 
_user_specified_nameinputs
ёА
П)
 __inference__traced_save_1253397
file_prefix/
+savev2_conv2d_15_kernel_read_readvariableop-
)savev2_conv2d_15_bias_read_readvariableop;
7savev2_batch_normalization_15_gamma_read_readvariableop:
6savev2_batch_normalization_15_beta_read_readvariableopA
=savev2_batch_normalization_15_moving_mean_read_readvariableopE
Asavev2_batch_normalization_15_moving_variance_read_readvariableop/
+savev2_conv2d_16_kernel_read_readvariableop-
)savev2_conv2d_16_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop/
+savev2_conv2d_17_kernel_read_readvariableop-
)savev2_conv2d_17_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop/
+savev2_conv2d_18_kernel_read_readvariableop-
)savev2_conv2d_18_bias_read_readvariableop;
7savev2_batch_normalization_18_gamma_read_readvariableop:
6savev2_batch_normalization_18_beta_read_readvariableopA
=savev2_batch_normalization_18_moving_mean_read_readvariableopE
Asavev2_batch_normalization_18_moving_variance_read_readvariableop/
+savev2_conv2d_19_kernel_read_readvariableop-
)savev2_conv2d_19_bias_read_readvariableop;
7savev2_batch_normalization_19_gamma_read_readvariableop:
6savev2_batch_normalization_19_beta_read_readvariableopA
=savev2_batch_normalization_19_moving_mean_read_readvariableopE
Asavev2_batch_normalization_19_moving_variance_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop0
,savev2_age_output_kernel_read_readvariableop.
*savev2_age_output_bias_read_readvariableop1
-savev2_race_output_kernel_read_readvariableop/
+savev2_race_output_bias_read_readvariableop3
/savev2_gender_output_kernel_read_readvariableop1
-savev2_gender_output_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop&
"savev2_total_6_read_readvariableop&
"savev2_count_6_read_readvariableop&
"savev2_total_5_read_readvariableop&
"savev2_count_5_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_rmsprop_conv2d_15_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_15_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_15_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_15_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_16_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_16_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_16_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_16_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_17_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_17_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_17_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_17_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_18_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_18_beta_rms_read_readvariableop;
7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop9
5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableopG
Csavev2_rmsprop_batch_normalization_19_gamma_rms_read_readvariableopF
Bsavev2_rmsprop_batch_normalization_19_beta_rms_read_readvariableop9
5savev2_rmsprop_dense_9_kernel_rms_read_readvariableop7
3savev2_rmsprop_dense_9_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_10_bias_rms_read_readvariableop:
6savev2_rmsprop_dense_11_kernel_rms_read_readvariableop8
4savev2_rmsprop_dense_11_bias_rms_read_readvariableop<
8savev2_rmsprop_age_output_kernel_rms_read_readvariableop:
6savev2_rmsprop_age_output_bias_rms_read_readvariableop=
9savev2_rmsprop_race_output_kernel_rms_read_readvariableop;
7savev2_rmsprop_race_output_bias_rms_read_readvariableop?
;savev2_rmsprop_gender_output_kernel_rms_read_readvariableop=
9savev2_rmsprop_gender_output_bias_rms_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpointsw
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
: ц0
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*0
value0B0^B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЌ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*б
valueЧBФ^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ы'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_15_kernel_read_readvariableop)savev2_conv2d_15_bias_read_readvariableop7savev2_batch_normalization_15_gamma_read_readvariableop6savev2_batch_normalization_15_beta_read_readvariableop=savev2_batch_normalization_15_moving_mean_read_readvariableopAsavev2_batch_normalization_15_moving_variance_read_readvariableop+savev2_conv2d_16_kernel_read_readvariableop)savev2_conv2d_16_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop+savev2_conv2d_17_kernel_read_readvariableop)savev2_conv2d_17_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop+savev2_conv2d_18_kernel_read_readvariableop)savev2_conv2d_18_bias_read_readvariableop7savev2_batch_normalization_18_gamma_read_readvariableop6savev2_batch_normalization_18_beta_read_readvariableop=savev2_batch_normalization_18_moving_mean_read_readvariableopAsavev2_batch_normalization_18_moving_variance_read_readvariableop+savev2_conv2d_19_kernel_read_readvariableop)savev2_conv2d_19_bias_read_readvariableop7savev2_batch_normalization_19_gamma_read_readvariableop6savev2_batch_normalization_19_beta_read_readvariableop=savev2_batch_normalization_19_moving_mean_read_readvariableopAsavev2_batch_normalization_19_moving_variance_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop,savev2_age_output_kernel_read_readvariableop*savev2_age_output_bias_read_readvariableop-savev2_race_output_kernel_read_readvariableop+savev2_race_output_bias_read_readvariableop/savev2_gender_output_kernel_read_readvariableop-savev2_gender_output_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop"savev2_total_6_read_readvariableop"savev2_count_6_read_readvariableop"savev2_total_5_read_readvariableop"savev2_count_5_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_rmsprop_conv2d_15_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_15_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_15_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_15_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_16_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_16_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_16_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_16_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_17_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_17_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_17_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_17_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_18_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_18_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_18_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_18_beta_rms_read_readvariableop7savev2_rmsprop_conv2d_19_kernel_rms_read_readvariableop5savev2_rmsprop_conv2d_19_bias_rms_read_readvariableopCsavev2_rmsprop_batch_normalization_19_gamma_rms_read_readvariableopBsavev2_rmsprop_batch_normalization_19_beta_rms_read_readvariableop5savev2_rmsprop_dense_9_kernel_rms_read_readvariableop3savev2_rmsprop_dense_9_bias_rms_read_readvariableop6savev2_rmsprop_dense_10_kernel_rms_read_readvariableop4savev2_rmsprop_dense_10_bias_rms_read_readvariableop6savev2_rmsprop_dense_11_kernel_rms_read_readvariableop4savev2_rmsprop_dense_11_bias_rms_read_readvariableop8savev2_rmsprop_age_output_kernel_rms_read_readvariableop6savev2_rmsprop_age_output_bias_rms_read_readvariableop9savev2_rmsprop_race_output_kernel_rms_read_readvariableop7savev2_rmsprop_race_output_bias_rms_read_readvariableop;savev2_rmsprop_gender_output_kernel_rms_read_readvariableop9savev2_rmsprop_gender_output_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *l
dtypesb
`2^	
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

identity_1Identity_1:output:0*н
_input_shapesЫ
Ш: : : : : : : : @:@:@:@:@:@:@::::::::::::::::::
::
::
::	::	::	:: : : : : : : : : : : : : : : : : : : : : : : : @:@:@:@:@::::::::::::
::
::
::	::	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@: 	
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
:@:-)
'
_output_shapes
:@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::.*
(
_output_shapes
::!

_output_shapes	
::!
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
::&"
 
_output_shapes
:
:! 

_output_shapes	
::&!"
 
_output_shapes
:
:!"

_output_shapes	
::&#"
 
_output_shapes
:
:!$

_output_shapes	
::%%!

_output_shapes
:	: &

_output_shapes
::%'!

_output_shapes
:	: (

_output_shapes
::%)!

_output_shapes
:	: *

_output_shapes
::+
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
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :,>(
&
_output_shapes
: : ?

_output_shapes
: : @

_output_shapes
: : A

_output_shapes
: :,B(
&
_output_shapes
: @: C

_output_shapes
:@: D

_output_shapes
:@: E

_output_shapes
:@:-F)
'
_output_shapes
:@:!G

_output_shapes	
::!H

_output_shapes	
::!I

_output_shapes	
::.J*
(
_output_shapes
::!K

_output_shapes	
::!L

_output_shapes	
::!M

_output_shapes	
::.N*
(
_output_shapes
::!O

_output_shapes	
::!P

_output_shapes	
::!Q

_output_shapes	
::&R"
 
_output_shapes
:
:!S

_output_shapes	
::&T"
 
_output_shapes
:
:!U

_output_shapes	
::&V"
 
_output_shapes
:
:!W

_output_shapes	
::%X!

_output_shapes
:	: Y

_output_shapes
::%Z!

_output_shapes
:	: [

_output_shapes
::%\!

_output_shapes
:	: ]

_output_shapes
::^

_output_shapes
: 
Ќ
{
$__inference_internal_grad_fn_1253230
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitye
mulMulmul_betamul_biasadd^result_grads_0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџV
mul_1Mulmul_betamul_biasadd*
T0*(
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџS
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџU
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:џџџџџџџџџZ
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Q
_input_shapes@
>:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:X T
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ
u
№
D__inference_model_2_layer_call_and_return_conditional_losses_1251672
input_4+
conv2d_15_1251563: 
conv2d_15_1251565: ,
batch_normalization_15_1251568: ,
batch_normalization_15_1251570: ,
batch_normalization_15_1251572: ,
batch_normalization_15_1251574: +
conv2d_16_1251578: @
conv2d_16_1251580:@,
batch_normalization_16_1251583:@,
batch_normalization_16_1251585:@,
batch_normalization_16_1251587:@,
batch_normalization_16_1251589:@,
conv2d_17_1251593:@ 
conv2d_17_1251595:	-
batch_normalization_17_1251598:	-
batch_normalization_17_1251600:	-
batch_normalization_17_1251602:	-
batch_normalization_17_1251604:	-
conv2d_18_1251608: 
conv2d_18_1251610:	-
batch_normalization_18_1251613:	-
batch_normalization_18_1251615:	-
batch_normalization_18_1251617:	-
batch_normalization_18_1251619:	-
conv2d_19_1251623: 
conv2d_19_1251625:	-
batch_normalization_19_1251628:	-
batch_normalization_19_1251630:	-
batch_normalization_19_1251632:	-
batch_normalization_19_1251634:	$
dense_11_1251639:

dense_11_1251641:	$
dense_10_1251644:

dense_10_1251646:	#
dense_9_1251649:

dense_9_1251651:	(
gender_output_1251654:	#
gender_output_1251656:&
race_output_1251659:	!
race_output_1251661:%
age_output_1251664:	 
age_output_1251666:
identity

identity_1

identity_2Ђ"age-output/StatefulPartitionedCallЂ.batch_normalization_15/StatefulPartitionedCallЂ.batch_normalization_16/StatefulPartitionedCallЂ.batch_normalization_17/StatefulPartitionedCallЂ.batch_normalization_18/StatefulPartitionedCallЂ.batch_normalization_19/StatefulPartitionedCallЂ!conv2d_15/StatefulPartitionedCallЂ!conv2d_16/StatefulPartitionedCallЂ!conv2d_17/StatefulPartitionedCallЂ!conv2d_18/StatefulPartitionedCallЂ!conv2d_19/StatefulPartitionedCallЂ dense_10/StatefulPartitionedCallЂ dense_11/StatefulPartitionedCallЂdense_9/StatefulPartitionedCallЂ%gender-output/StatefulPartitionedCallЂ#race-output/StatefulPartitionedCall
!conv2d_15/StatefulPartitionedCallStatefulPartitionedCallinput_4conv2d_15_1251563conv2d_15_1251565*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731 
.batch_normalization_15/StatefulPartitionedCallStatefulPartitionedCall*conv2d_15/StatefulPartitionedCall:output:0batch_normalization_15_1251568batch_normalization_15_1251570batch_normalization_15_1251572batch_normalization_15_1251574*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:џџџџџџџџџФФ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250342
 max_pooling2d_15/PartitionedCallPartitionedCall7batch_normalization_15/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџbb * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393Ѕ
!conv2d_16/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_15/PartitionedCall:output:0conv2d_16_1251578conv2d_16_1251580*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*conv2d_16/StatefulPartitionedCall:output:0batch_normalization_16_1251583batch_normalization_16_1251585batch_normalization_16_1251587batch_normalization_16_1251589*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250418
 max_pooling2d_16/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ00@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469І
!conv2d_17/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_16/PartitionedCall:output:0conv2d_17_1251593conv2d_17_1251595*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*conv2d_17/StatefulPartitionedCall:output:0batch_normalization_17_1251598batch_normalization_17_1251600batch_normalization_17_1251602batch_normalization_17_1251604*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250494
 max_pooling2d_17/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545І
!conv2d_18/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_17/PartitionedCall:output:0conv2d_18_1251608conv2d_18_1251610*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812
.batch_normalization_18/StatefulPartitionedCallStatefulPartitionedCall*conv2d_18/StatefulPartitionedCall:output:0batch_normalization_18_1251613batch_normalization_18_1251615batch_normalization_18_1251617batch_normalization_18_1251619*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250570
 max_pooling2d_18/PartitionedCallPartitionedCall7batch_normalization_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ

* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621І
!conv2d_19/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_18/PartitionedCall:output:0conv2d_19_1251623conv2d_19_1251625*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1250839
.batch_normalization_19/StatefulPartitionedCallStatefulPartitionedCall*conv2d_19/StatefulPartitionedCall:output:0batch_normalization_19_1251628batch_normalization_19_1251630batch_normalization_19_1251632batch_normalization_19_1251634*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250646
 max_pooling2d_19/PartitionedCallPartitionedCall7batch_normalization_19/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697ќ
&global_max_pooling2d_3/PartitionedCallPartitionedCall)max_pooling2d_19/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710 
 dense_11/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_11_1251639dense_11_1251641*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867 
 dense_10/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_10_1251644dense_10_1251646*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884
dense_9/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling2d_3/PartitionedCall:output:0dense_9_1251649dense_9_1251651*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908­
%gender-output/StatefulPartitionedCallStatefulPartitionedCall)dense_11/StatefulPartitionedCall:output:0gender_output_1251654gender_output_1251656*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925Ѕ
#race-output/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0race_output_1251659race_output_1251661*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_race-output_layer_call_and_return_conditional_losses_1250942 
"age-output/StatefulPartitionedCallStatefulPartitionedCall(dense_9/StatefulPartitionedCall:output:0age_output_1251664age_output_1251666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_age-output_layer_call_and_return_conditional_losses_1250959z
IdentityIdentity+age-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ}

Identity_1Identity,race-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ

Identity_2Identity.gender-output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџЪ
NoOpNoOp#^age-output/StatefulPartitionedCall/^batch_normalization_15/StatefulPartitionedCall/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall/^batch_normalization_18/StatefulPartitionedCall/^batch_normalization_19/StatefulPartitionedCall"^conv2d_15/StatefulPartitionedCall"^conv2d_16/StatefulPartitionedCall"^conv2d_17/StatefulPartitionedCall"^conv2d_18/StatefulPartitionedCall"^conv2d_19/StatefulPartitionedCall!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall&^gender-output/StatefulPartitionedCall$^race-output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"age-output/StatefulPartitionedCall"age-output/StatefulPartitionedCall2`
.batch_normalization_15/StatefulPartitionedCall.batch_normalization_15/StatefulPartitionedCall2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2`
.batch_normalization_18/StatefulPartitionedCall.batch_normalization_18/StatefulPartitionedCall2`
.batch_normalization_19/StatefulPartitionedCall.batch_normalization_19/StatefulPartitionedCall2F
!conv2d_15/StatefulPartitionedCall!conv2d_15/StatefulPartitionedCall2F
!conv2d_16/StatefulPartitionedCall!conv2d_16/StatefulPartitionedCall2F
!conv2d_17/StatefulPartitionedCall!conv2d_17/StatefulPartitionedCall2F
!conv2d_18/StatefulPartitionedCall!conv2d_18/StatefulPartitionedCall2F
!conv2d_19/StatefulPartitionedCall!conv2d_19/StatefulPartitionedCall2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2N
%gender-output/StatefulPartitionedCall%gender-output/StatefulPartitionedCall2J
#race-output/StatefulPartitionedCall#race-output/StatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4
Хђ
Џ<
#__inference__traced_restore_1253686
file_prefix;
!assignvariableop_conv2d_15_kernel: /
!assignvariableop_1_conv2d_15_bias: =
/assignvariableop_2_batch_normalization_15_gamma: <
.assignvariableop_3_batch_normalization_15_beta: C
5assignvariableop_4_batch_normalization_15_moving_mean: G
9assignvariableop_5_batch_normalization_15_moving_variance: =
#assignvariableop_6_conv2d_16_kernel: @/
!assignvariableop_7_conv2d_16_bias:@=
/assignvariableop_8_batch_normalization_16_gamma:@<
.assignvariableop_9_batch_normalization_16_beta:@D
6assignvariableop_10_batch_normalization_16_moving_mean:@H
:assignvariableop_11_batch_normalization_16_moving_variance:@?
$assignvariableop_12_conv2d_17_kernel:@1
"assignvariableop_13_conv2d_17_bias:	?
0assignvariableop_14_batch_normalization_17_gamma:	>
/assignvariableop_15_batch_normalization_17_beta:	E
6assignvariableop_16_batch_normalization_17_moving_mean:	I
:assignvariableop_17_batch_normalization_17_moving_variance:	@
$assignvariableop_18_conv2d_18_kernel:1
"assignvariableop_19_conv2d_18_bias:	?
0assignvariableop_20_batch_normalization_18_gamma:	>
/assignvariableop_21_batch_normalization_18_beta:	E
6assignvariableop_22_batch_normalization_18_moving_mean:	I
:assignvariableop_23_batch_normalization_18_moving_variance:	@
$assignvariableop_24_conv2d_19_kernel:1
"assignvariableop_25_conv2d_19_bias:	?
0assignvariableop_26_batch_normalization_19_gamma:	>
/assignvariableop_27_batch_normalization_19_beta:	E
6assignvariableop_28_batch_normalization_19_moving_mean:	I
:assignvariableop_29_batch_normalization_19_moving_variance:	6
"assignvariableop_30_dense_9_kernel:
/
 assignvariableop_31_dense_9_bias:	7
#assignvariableop_32_dense_10_kernel:
0
!assignvariableop_33_dense_10_bias:	7
#assignvariableop_34_dense_11_kernel:
0
!assignvariableop_35_dense_11_bias:	8
%assignvariableop_36_age_output_kernel:	1
#assignvariableop_37_age_output_bias:9
&assignvariableop_38_race_output_kernel:	2
$assignvariableop_39_race_output_bias:;
(assignvariableop_40_gender_output_kernel:	4
&assignvariableop_41_gender_output_bias:*
 assignvariableop_42_rmsprop_iter:	 +
!assignvariableop_43_rmsprop_decay: 3
)assignvariableop_44_rmsprop_learning_rate: .
$assignvariableop_45_rmsprop_momentum: )
assignvariableop_46_rmsprop_rho: %
assignvariableop_47_total_6: %
assignvariableop_48_count_6: %
assignvariableop_49_total_5: %
assignvariableop_50_count_5: %
assignvariableop_51_total_4: %
assignvariableop_52_count_4: %
assignvariableop_53_total_3: %
assignvariableop_54_count_3: %
assignvariableop_55_total_2: %
assignvariableop_56_count_2: %
assignvariableop_57_total_1: %
assignvariableop_58_count_1: #
assignvariableop_59_total: #
assignvariableop_60_count: J
0assignvariableop_61_rmsprop_conv2d_15_kernel_rms: <
.assignvariableop_62_rmsprop_conv2d_15_bias_rms: J
<assignvariableop_63_rmsprop_batch_normalization_15_gamma_rms: I
;assignvariableop_64_rmsprop_batch_normalization_15_beta_rms: J
0assignvariableop_65_rmsprop_conv2d_16_kernel_rms: @<
.assignvariableop_66_rmsprop_conv2d_16_bias_rms:@J
<assignvariableop_67_rmsprop_batch_normalization_16_gamma_rms:@I
;assignvariableop_68_rmsprop_batch_normalization_16_beta_rms:@K
0assignvariableop_69_rmsprop_conv2d_17_kernel_rms:@=
.assignvariableop_70_rmsprop_conv2d_17_bias_rms:	K
<assignvariableop_71_rmsprop_batch_normalization_17_gamma_rms:	J
;assignvariableop_72_rmsprop_batch_normalization_17_beta_rms:	L
0assignvariableop_73_rmsprop_conv2d_18_kernel_rms:=
.assignvariableop_74_rmsprop_conv2d_18_bias_rms:	K
<assignvariableop_75_rmsprop_batch_normalization_18_gamma_rms:	J
;assignvariableop_76_rmsprop_batch_normalization_18_beta_rms:	L
0assignvariableop_77_rmsprop_conv2d_19_kernel_rms:=
.assignvariableop_78_rmsprop_conv2d_19_bias_rms:	K
<assignvariableop_79_rmsprop_batch_normalization_19_gamma_rms:	J
;assignvariableop_80_rmsprop_batch_normalization_19_beta_rms:	B
.assignvariableop_81_rmsprop_dense_9_kernel_rms:
;
,assignvariableop_82_rmsprop_dense_9_bias_rms:	C
/assignvariableop_83_rmsprop_dense_10_kernel_rms:
<
-assignvariableop_84_rmsprop_dense_10_bias_rms:	C
/assignvariableop_85_rmsprop_dense_11_kernel_rms:
<
-assignvariableop_86_rmsprop_dense_11_bias_rms:	D
1assignvariableop_87_rmsprop_age_output_kernel_rms:	=
/assignvariableop_88_rmsprop_age_output_bias_rms:E
2assignvariableop_89_rmsprop_race_output_kernel_rms:	>
0assignvariableop_90_rmsprop_race_output_bias_rms:G
4assignvariableop_91_rmsprop_gender_output_kernel_rms:	@
2assignvariableop_92_rmsprop_gender_output_bias_rms:
identity_94ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_46ЂAssignVariableOp_47ЂAssignVariableOp_48ЂAssignVariableOp_49ЂAssignVariableOp_5ЂAssignVariableOp_50ЂAssignVariableOp_51ЂAssignVariableOp_52ЂAssignVariableOp_53ЂAssignVariableOp_54ЂAssignVariableOp_55ЂAssignVariableOp_56ЂAssignVariableOp_57ЂAssignVariableOp_58ЂAssignVariableOp_59ЂAssignVariableOp_6ЂAssignVariableOp_60ЂAssignVariableOp_61ЂAssignVariableOp_62ЂAssignVariableOp_63ЂAssignVariableOp_64ЂAssignVariableOp_65ЂAssignVariableOp_66ЂAssignVariableOp_67ЂAssignVariableOp_68ЂAssignVariableOp_69ЂAssignVariableOp_7ЂAssignVariableOp_70ЂAssignVariableOp_71ЂAssignVariableOp_72ЂAssignVariableOp_73ЂAssignVariableOp_74ЂAssignVariableOp_75ЂAssignVariableOp_76ЂAssignVariableOp_77ЂAssignVariableOp_78ЂAssignVariableOp_79ЂAssignVariableOp_8ЂAssignVariableOp_80ЂAssignVariableOp_81ЂAssignVariableOp_82ЂAssignVariableOp_83ЂAssignVariableOp_84ЂAssignVariableOp_85ЂAssignVariableOp_86ЂAssignVariableOp_87ЂAssignVariableOp_88ЂAssignVariableOp_89ЂAssignVariableOp_9ЂAssignVariableOp_90ЂAssignVariableOp_91ЂAssignVariableOp_92щ0
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*0
value0B0^B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-12/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-12/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-13/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-13/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-14/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-14/bias/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-15/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-15/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/5/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/6/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-11/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-11/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-12/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-12/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-13/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-13/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-14/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-14/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-15/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-15/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЏ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:^*
dtype0*б
valueЧBФ^B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ї
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesћ
ј::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*l
dtypesb
`2^	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_15_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_15_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_15_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_15_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_15_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_15_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_16_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_16_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_16_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_16_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_17_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_17_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_17_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_17_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_17_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_17_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv2d_18_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv2d_18_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_18_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_18_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_18_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_18_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp$assignvariableop_24_conv2d_19_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp"assignvariableop_25_conv2d_19_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_26AssignVariableOp0assignvariableop_26_batch_normalization_19_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_27AssignVariableOp/assignvariableop_27_batch_normalization_19_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ї
AssignVariableOp_28AssignVariableOp6assignvariableop_28_batch_normalization_19_moving_meanIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_29AssignVariableOp:assignvariableop_29_batch_normalization_19_moving_varianceIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp"assignvariableop_30_dense_9_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp assignvariableop_31_dense_9_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp#assignvariableop_32_dense_10_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp!assignvariableop_33_dense_10_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp#assignvariableop_34_dense_11_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp!assignvariableop_35_dense_11_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp%assignvariableop_36_age_output_kernelIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp#assignvariableop_37_age_output_biasIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp&assignvariableop_38_race_output_kernelIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp$assignvariableop_39_race_output_biasIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_gender_output_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp&assignvariableop_41_gender_output_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_42AssignVariableOp assignvariableop_42_rmsprop_iterIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp!assignvariableop_43_rmsprop_decayIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp)assignvariableop_44_rmsprop_learning_rateIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp$assignvariableop_45_rmsprop_momentumIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOpassignvariableop_46_rmsprop_rhoIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOpassignvariableop_47_total_6Identity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOpassignvariableop_48_count_6Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOpassignvariableop_49_total_5Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_50AssignVariableOpassignvariableop_50_count_5Identity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOpassignvariableop_51_total_4Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOpassignvariableop_52_count_4Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_53AssignVariableOpassignvariableop_53_total_3Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_54AssignVariableOpassignvariableop_54_count_3Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_2Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_2Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOpassignvariableop_57_total_1Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOpassignvariableop_58_count_1Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_59AssignVariableOpassignvariableop_59_totalIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_60AssignVariableOpassignvariableop_60_countIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_61AssignVariableOp0assignvariableop_61_rmsprop_conv2d_15_kernel_rmsIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp.assignvariableop_62_rmsprop_conv2d_15_bias_rmsIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_63AssignVariableOp<assignvariableop_63_rmsprop_batch_normalization_15_gamma_rmsIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_64AssignVariableOp;assignvariableop_64_rmsprop_batch_normalization_15_beta_rmsIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_65AssignVariableOp0assignvariableop_65_rmsprop_conv2d_16_kernel_rmsIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp.assignvariableop_66_rmsprop_conv2d_16_bias_rmsIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_67AssignVariableOp<assignvariableop_67_rmsprop_batch_normalization_16_gamma_rmsIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_68AssignVariableOp;assignvariableop_68_rmsprop_batch_normalization_16_beta_rmsIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_69AssignVariableOp0assignvariableop_69_rmsprop_conv2d_17_kernel_rmsIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp.assignvariableop_70_rmsprop_conv2d_17_bias_rmsIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_71AssignVariableOp<assignvariableop_71_rmsprop_batch_normalization_17_gamma_rmsIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_72AssignVariableOp;assignvariableop_72_rmsprop_batch_normalization_17_beta_rmsIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_73AssignVariableOp0assignvariableop_73_rmsprop_conv2d_18_kernel_rmsIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_74AssignVariableOp.assignvariableop_74_rmsprop_conv2d_18_bias_rmsIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_75AssignVariableOp<assignvariableop_75_rmsprop_batch_normalization_18_gamma_rmsIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_76AssignVariableOp;assignvariableop_76_rmsprop_batch_normalization_18_beta_rmsIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_77AssignVariableOp0assignvariableop_77_rmsprop_conv2d_19_kernel_rmsIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_78AssignVariableOp.assignvariableop_78_rmsprop_conv2d_19_bias_rmsIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:­
AssignVariableOp_79AssignVariableOp<assignvariableop_79_rmsprop_batch_normalization_19_gamma_rmsIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:Ќ
AssignVariableOp_80AssignVariableOp;assignvariableop_80_rmsprop_batch_normalization_19_beta_rmsIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_81AssignVariableOp.assignvariableop_81_rmsprop_dense_9_kernel_rmsIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_82AssignVariableOp,assignvariableop_82_rmsprop_dense_9_bias_rmsIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_83AssignVariableOp/assignvariableop_83_rmsprop_dense_10_kernel_rmsIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_84AssignVariableOp-assignvariableop_84_rmsprop_dense_10_bias_rmsIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_85AssignVariableOp/assignvariableop_85_rmsprop_dense_11_kernel_rmsIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_86AssignVariableOp-assignvariableop_86_rmsprop_dense_11_bias_rmsIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_87AssignVariableOp1assignvariableop_87_rmsprop_age_output_kernel_rmsIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_88AssignVariableOp/assignvariableop_88_rmsprop_age_output_bias_rmsIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_89AssignVariableOp2assignvariableop_89_rmsprop_race_output_kernel_rmsIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:Ё
AssignVariableOp_90AssignVariableOp0assignvariableop_90_rmsprop_race_output_bias_rmsIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_91AssignVariableOp4assignvariableop_91_rmsprop_gender_output_kernel_rmsIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_92AssignVariableOp2assignvariableop_92_rmsprop_gender_output_bias_rmsIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Э
Identity_93Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_94IdentityIdentity_93:output:0^NoOp_1*
T0*
_output_shapes
: К
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92*"
_acd_function_control_output(*
_output_shapes
 "#
identity_94Identity_94:output:0*б
_input_shapesП
М: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_92:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ь

)__inference_dense_9_layer_call_fn_1252885

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_1250908p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Л
њ
D__inference_dense_9_layer_call_and_return_conditional_losses_1252903

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	

identity_1ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџI
betaConst*
_output_shapes
: *
dtype0*
valueB
 *  ?^
mulMulbeta:output:0BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџ^
mul_1MulBiasAdd:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџ­
	IdentityN	IdentityN	mul_1:z:0BiasAdd:output:0*
T
2*-
_gradient_op_typeCustomGradient-1252895*<
_output_shapes*
(:џџџџџџџџџ:џџџџџџџџџd

Identity_1IdentityIdentityN:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252469

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_15_layer_call_fn_1252492

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

џ
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ``@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџbb : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџbb 
 
_user_specified_nameinputs
Њ

ќ
J__inference_gender-output_layer_call_and_return_conditional_losses_1250925

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
Ђ
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1250646

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0Э
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџА
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_16_layer_call_fn_1252584

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

џ
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1252517

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ``@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ``@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ``@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџbb : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџbb 
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_11_layer_call_and_return_conditional_losses_1252943

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1250393

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

џ
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1250731

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџФФ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџФФ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
Ю

*__inference_dense_10_layer_call_fn_1252912

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250601

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј

љ
E__inference_dense_10_layer_call_and_return_conditional_losses_1252923

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Џ
o
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1252876

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
N
2__inference_max_pooling2d_17_layer_call_fn_1252676

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1250545
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Т
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252487

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
	
г
8__inference_batch_normalization_15_layer_call_fn_1252438

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250342
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


$__inference_internal_grad_fn_1253284
result_grads_0
result_grads_1
mul_model_2_dense_9_beta
mul_model_2_dense_9_biasadd
identity
mulMulmul_model_2_dense_9_betamul_model_2_dense_9_biasadd^result_grads_0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџv
mul_1Mulmul_model_2_dense_9_betamul_model_2_dense_9_biasadd*
T0*(
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџS
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџU
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:џџџџџџџџџZ
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Q
_input_shapes@
>:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:X T
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ


F__inference_conv2d_19_layer_call_and_return_conditional_losses_1252793

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ

: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ


 
_user_specified_nameinputs
 	
з
8__inference_batch_normalization_18_layer_call_fn_1252714

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1250570
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Њ

%__inference_signature_wrapper_1251885
input_4!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:


unknown_30:	

unknown_31:


unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:

unknown_37:	

unknown_38:

unknown_39:	

unknown_40:
identity

identity_1

identity_2ЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_1250320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4

i
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1252589

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ё

љ
G__inference_age-output_layer_call_and_return_conditional_losses_1252963

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ю

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1250418

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@:@:@:@:@:*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 
_user_specified_nameinputs
ј
Ѓ
+__inference_conv2d_18_layer_call_fn_1252690

inputs#
unknown:
	unknown_0:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ё
 
+__inference_conv2d_16_layer_call_fn_1252506

inputs!
unknown: @
	unknown_0:@
identityЂStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ``@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1250758w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:џџџџџџџџџ``@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџbb : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџbb 
 
_user_specified_nameinputs
Ю

*__inference_dense_11_layer_call_fn_1252932

inputs
unknown:

	unknown_0:	
identityЂStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_1250867p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
	
г
8__inference_batch_normalization_15_layer_call_fn_1252451

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250373
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
Џ
o
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1250710

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю

,__inference_age-output_layer_call_fn_1252952

inputs
unknown:	
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *P
fKRI
G__inference_age-output_layer_call_and_return_conditional_losses_1250959o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252763

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ј

њ
H__inference_race-output_layer_call_and_return_conditional_losses_1252983

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
В
­

)__inference_model_2_layer_call_fn_1252071

inputs!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:


unknown_30:	

unknown_31:


unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:

unknown_37:	

unknown_38:

unknown_39:	

unknown_40:
identity

identity_1

identity_2ЂStatefulPartitionedCallЁ
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
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*B
_read_only_resource_inputs$
" 	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1251376o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs

џ
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1252425

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:џџџџџџџџџФФ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:џџџџџџџџџФФ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:џџџџџџџџџФФ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:џџџџџџџџџЦЦ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:џџџџџџџџџЦЦ
 
_user_specified_nameinputs
Ю

S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250342

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0Ш
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ А
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs
н

$__inference_internal_grad_fn_1253266
result_grads_0
result_grads_1
mul_dense_9_beta
mul_dense_9_biasadd
identityu
mulMulmul_dense_9_betamul_dense_9_biasadd^result_grads_0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџf
mul_1Mulmul_dense_9_betamul_dense_9_biasadd*
T0*(
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџS
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџU
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:џџџџџџџџџZ
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Q
_input_shapes@
>:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:X T
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ
П
N
2__inference_max_pooling2d_19_layer_call_fn_1252860

inputs
identityо
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1250697
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ќ
{
$__inference_internal_grad_fn_1253212
result_grads_0
result_grads_1
mul_beta
mul_biasadd
identitye
mulMulmul_betamul_biasadd^result_grads_0*
T0*(
_output_shapes
:џџџџџџџџџN
SigmoidSigmoidmul:z:0*
T0*(
_output_shapes
:џџџџџџџџџV
mul_1Mulmul_betamul_biasadd*
T0*(
_output_shapes
:џџџџџџџџџJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:џџџџџџџџџS
mul_2Mul	mul_1:z:0sub:z:0*
T0*(
_output_shapes
:џџџџџџџџџJ
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Z
addAddV2add/x:output:0	mul_2:z:0*
T0*(
_output_shapes
:џџџџџџџџџU
mul_3MulSigmoid:y:0add:z:0*
T0*(
_output_shapes
:џџџџџџџџџZ
mul_4Mulresult_grads_0	mul_3:z:0*
T0*(
_output_shapes
:џџџџџџџџџR
IdentityIdentity	mul_4:z:0*
T0*(
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*Q
_input_shapes@
>:џџџџџџџџџ:џџџџџџџџџ: :џџџџџџџџџ:X T
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_0:XT
(
_output_shapes
:џџџџџџџџџ
(
_user_specified_nameresult_grads_1:

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџ
Ј

љ
E__inference_dense_10_layer_call_and_return_conditional_losses_1250884

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
П
Ў

)__inference_model_2_layer_call_fn_1251059
input_4!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@

unknown_12:	

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:	&

unknown_17:

unknown_18:	

unknown_19:	

unknown_20:	

unknown_21:	

unknown_22:	&

unknown_23:

unknown_24:	

unknown_25:	

unknown_26:	

unknown_27:	

unknown_28:	

unknown_29:


unknown_30:	

unknown_31:


unknown_32:	

unknown_33:


unknown_34:	

unknown_35:	

unknown_36:

unknown_37:	

unknown_38:

unknown_39:	

unknown_40:
identity

identity_1

identity_2ЂStatefulPartitionedCallЌ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:џџџџџџџџџ:џџџџџџџџџ:џџџџџџџџџ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**0
config_proto 

CPU

GPU2*0J 8 *M
fHRF
D__inference_model_2_layer_call_and_return_conditional_losses_1250968o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:џџџџџџџџџq

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*
_input_shapess
q:џџџџџџџџџЦЦ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:џџџџџџџџџЦЦ
!
_user_specified_name	input_4
	
з
8__inference_batch_normalization_17_layer_call_fn_1252635

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250525
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252855

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs


F__inference_conv2d_18_layer_call_and_return_conditional_losses_1250812

inputs:
conv2d_readvariableop_resource:.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1250469

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
 	
з
8__inference_batch_normalization_17_layer_call_fn_1252622

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identityЂStatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1250494
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ѕ
Ђ
+__inference_conv2d_17_layer_call_fn_1252598

inputs"
unknown:@
	unknown_0:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџ..*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ..`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ00@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ00@
 
_user_specified_nameinputs

Т
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1250373

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ж
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : :*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ д
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 
_user_specified_nameinputs


F__inference_conv2d_17_layer_call_and_return_conditional_losses_1250785

inputs9
conv2d_readvariableop_resource:@.
biasadd_readvariableop_resource:	
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..*
paddingVALID*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:џџџџџџџџџ..Y
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:џџџџџџџџџ..j
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:џџџџџџџџџ..w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:џџџџџџџџџ00@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ00@
 
_user_specified_nameinputs

Ц
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252671

inputs&
readvariableop_resource:	(
readvariableop_1_resource:	7
(fusedbatchnormv3_readvariableop_resource:	9
*fusedbatchnormv3_readvariableop_1_resource:	
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:*
dtype0
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:*
dtype0
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:*
dtype0л
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<Ц
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(а
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџд
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1250621

inputs
identityЂ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs>
$__inference_internal_grad_fn_1253212CustomGradient-1252895>
$__inference_internal_grad_fn_1253230CustomGradient-1250900>
$__inference_internal_grad_fn_1253248CustomGradient-1252374>
$__inference_internal_grad_fn_1253266CustomGradient-1252207>
$__inference_internal_grad_fn_1253284CustomGradient-1250289"Е	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Л
serving_defaultЇ
E
input_4:
serving_default_input_4:0џџџџџџџџџЦЦ>

age-output0
StatefulPartitionedCall:0џџџџџџџџџA
gender-output0
StatefulPartitionedCall:1џџџџџџџџџ?
race-output0
StatefulPartitionedCall:2џџџџџџџџџtensorflow/serving/predict:Й
Ы
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer-9
layer_with_weights-6
layer-10
layer_with_weights-7
layer-11
layer-12
layer_with_weights-8
layer-13
layer_with_weights-9
layer-14
layer-15
layer-16
layer_with_weights-10
layer-17
layer_with_weights-11
layer-18
layer_with_weights-12
layer-19
layer_with_weights-13
layer-20
layer_with_weights-14
layer-21
layer_with_weights-15
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 loss
!
signatures"
_tf_keras_network
"
_tf_keras_input_layer
н
"	variables
#trainable_variables
$regularization_losses
%	keras_api
&__call__
*'&call_and_return_all_conditional_losses

(kernel
)bias
 *_jit_compiled_convolution_op"
_tf_keras_layer
ъ
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta
4moving_mean
5moving_variance"
_tf_keras_layer
Ѕ
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
н
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias
 D_jit_compiled_convolution_op"
_tf_keras_layer
ъ
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses
Kaxis
	Lgamma
Mbeta
Nmoving_mean
Omoving_variance"
_tf_keras_layer
Ѕ
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses"
_tf_keras_layer
н
V	variables
Wtrainable_variables
Xregularization_losses
Y	keras_api
Z__call__
*[&call_and_return_all_conditional_losses

\kernel
]bias
 ^_jit_compiled_convolution_op"
_tf_keras_layer
ъ
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance"
_tf_keras_layer
Ѕ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
н
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias
 x_jit_compiled_convolution_op"
_tf_keras_layer
ю
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
axis

gamma
	beta
moving_mean
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias
!_jit_compiled_convolution_op"
_tf_keras_layer
ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
	axis

gamma
	beta
moving_mean
moving_variance"
_tf_keras_layer
Ћ
	variables
trainable_variables
 regularization_losses
Ё	keras_api
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ћ
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ї	keras_api
Ј__call__
+Љ&call_and_return_all_conditional_losses"
_tf_keras_layer
У
Њ	variables
Ћtrainable_variables
Ќregularization_losses
­	keras_api
Ў__call__
+Џ&call_and_return_all_conditional_losses
Аkernel
	Бbias"
_tf_keras_layer
У
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses
Иkernel
	Йbias"
_tf_keras_layer
У
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias"
_tf_keras_layer
У
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses
Шkernel
	Щbias"
_tf_keras_layer
У
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аkernel
	бbias"
_tf_keras_layer
У
в	variables
гtrainable_variables
дregularization_losses
е	keras_api
ж__call__
+з&call_and_return_all_conditional_losses
иkernel
	йbias"
_tf_keras_layer
ќ
(0
)1
22
33
44
55
B6
C7
L8
M9
N10
O11
\12
]13
f14
g15
h16
i17
v18
w19
20
21
22
23
24
25
26
27
28
29
А30
Б31
И32
Й33
Р34
С35
Ш36
Щ37
а38
б39
и40
й41"
trackable_list_wrapper
Ј
(0
)1
22
33
B4
C5
L6
M7
\8
]9
f10
g11
v12
w13
14
15
16
17
18
19
А20
Б21
И22
Й23
Р24
С25
Ш26
Щ27
а28
б29
и30
й31"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
с
пtrace_0
рtrace_1
сtrace_2
тtrace_32ю
)__inference_model_2_layer_call_fn_1251059
)__inference_model_2_layer_call_fn_1251978
)__inference_model_2_layer_call_fn_1252071
)__inference_model_2_layer_call_fn_1251560П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zпtrace_0zрtrace_1zсtrace_2zтtrace_3
Э
уtrace_0
фtrace_1
хtrace_2
цtrace_32к
D__inference_model_2_layer_call_and_return_conditional_losses_1252238
D__inference_model_2_layer_call_and_return_conditional_losses_1252405
D__inference_model_2_layer_call_and_return_conditional_losses_1251672
D__inference_model_2_layer_call_and_return_conditional_losses_1251784П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zуtrace_0zфtrace_1zхtrace_2zцtrace_3
ЭBЪ
"__inference__wrapped_model_1250320input_4"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
щ
	чiter

шdecay
щlearning_rate
ъmomentum
ыrho
(rmsЗ
)rmsИ
2rmsЙ
3rmsК
BrmsЛ
CrmsМ
LrmsН
MrmsО
\rmsП
]rmsР
frmsС
grmsТ
vrmsУ
wrmsФrmsХrmsЦrmsЧrmsШrmsЩrmsЪАrmsЫБrmsЬИrmsЭЙrmsЮРrmsЯСrmsаШrmsбЩrmsваrmsгбrmsдиrmsейrmsж"
	optimizer
 "
trackable_dict_wrapper
-
ьserving_default"
signature_map
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
эnon_trainable_variables
юlayers
яmetrics
 №layer_regularization_losses
ёlayer_metrics
"	variables
#trainable_variables
$regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
ё
ђtrace_02в
+__inference_conv2d_15_layer_call_fn_1252414Ђ
В
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
annotationsЊ *
 zђtrace_0

ѓtrace_02э
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1252425Ђ
В
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
annotationsЊ *
 zѓtrace_0
*:( 2conv2d_15/kernel
: 2conv2d_15/bias
Д2БЎ
ЃВ
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
annotationsЊ *
 0
<
20
31
42
53"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
В
єnon_trainable_variables
ѕlayers
іmetrics
 їlayer_regularization_losses
јlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
х
љtrace_0
њtrace_12Њ
8__inference_batch_normalization_15_layer_call_fn_1252438
8__inference_batch_normalization_15_layer_call_fn_1252451Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zљtrace_0zњtrace_1

ћtrace_0
ќtrace_12р
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252469
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252487Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0zќtrace_1
 "
trackable_list_wrapper
*:( 2batch_normalization_15/gamma
):' 2batch_normalization_15/beta
2:0  (2"batch_normalization_15/moving_mean
6:4  (2&batch_normalization_15/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
§non_trainable_variables
ўlayers
џmetrics
 layer_regularization_losses
layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
ј
trace_02й
2__inference_max_pooling2d_15_layer_call_fn_1252492Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02є
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1252497Ђ
В
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
annotationsЊ *
 ztrace_0
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ё
trace_02в
+__inference_conv2d_16_layer_call_fn_1252506Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02э
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1252517Ђ
В
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
annotationsЊ *
 ztrace_0
*:( @2conv2d_16/kernel
:@2conv2d_16/bias
Д2БЎ
ЃВ
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
annotationsЊ *
 0
<
L0
M1
N2
O3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
х
trace_0
trace_12Њ
8__inference_batch_normalization_16_layer_call_fn_1252530
8__inference_batch_normalization_16_layer_call_fn_1252543Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1

trace_0
trace_12р
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252561
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252579Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
 "
trackable_list_wrapper
*:(@2batch_normalization_16/gamma
):'@2batch_normalization_16/beta
2:0@ (2"batch_normalization_16/moving_mean
6:4@ (2&batch_normalization_16/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
ј
trace_02й
2__inference_max_pooling2d_16_layer_call_fn_1252584Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02є
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1252589Ђ
В
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
annotationsЊ *
 ztrace_0
.
\0
]1"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
V	variables
Wtrainable_variables
Xregularization_losses
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
ё
 trace_02в
+__inference_conv2d_17_layer_call_fn_1252598Ђ
В
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
annotationsЊ *
 z trace_0

Ёtrace_02э
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1252609Ђ
В
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
annotationsЊ *
 zЁtrace_0
+:)@2conv2d_17/kernel
:2conv2d_17/bias
Д2БЎ
ЃВ
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
annotationsЊ *
 0
<
f0
g1
h2
i3"
trackable_list_wrapper
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ђnon_trainable_variables
Ѓlayers
Єmetrics
 Ѕlayer_regularization_losses
Іlayer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
х
Їtrace_0
Јtrace_12Њ
8__inference_batch_normalization_17_layer_call_fn_1252622
8__inference_batch_normalization_17_layer_call_fn_1252635Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЇtrace_0zЈtrace_1

Љtrace_0
Њtrace_12р
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252653
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252671Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЉtrace_0zЊtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_17/gamma
*:(2batch_normalization_17/beta
3:1 (2"batch_normalization_17/moving_mean
7:5 (2&batch_normalization_17/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
Ћnon_trainable_variables
Ќlayers
­metrics
 Ўlayer_regularization_losses
Џlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
ј
Аtrace_02й
2__inference_max_pooling2d_17_layer_call_fn_1252676Ђ
В
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
annotationsЊ *
 zАtrace_0

Бtrace_02є
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1252681Ђ
В
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
annotationsЊ *
 zБtrace_0
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
ё
Зtrace_02в
+__inference_conv2d_18_layer_call_fn_1252690Ђ
В
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
annotationsЊ *
 zЗtrace_0

Иtrace_02э
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1252701Ђ
В
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
annotationsЊ *
 zИtrace_0
,:*2conv2d_18/kernel
:2conv2d_18/bias
Д2БЎ
ЃВ
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
annotationsЊ *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Йnon_trainable_variables
Кlayers
Лmetrics
 Мlayer_regularization_losses
Нlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
х
Оtrace_0
Пtrace_12Њ
8__inference_batch_normalization_18_layer_call_fn_1252714
8__inference_batch_normalization_18_layer_call_fn_1252727Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0zПtrace_1

Рtrace_0
Сtrace_12р
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252745
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252763Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zРtrace_0zСtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_18/gamma
*:(2batch_normalization_18/beta
3:1 (2"batch_normalization_18/moving_mean
7:5 (2&batch_normalization_18/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ј
Чtrace_02й
2__inference_max_pooling2d_18_layer_call_fn_1252768Ђ
В
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
annotationsЊ *
 zЧtrace_0

Шtrace_02є
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1252773Ђ
В
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
annotationsЊ *
 zШtrace_0
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ё
Юtrace_02в
+__inference_conv2d_19_layer_call_fn_1252782Ђ
В
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
annotationsЊ *
 zЮtrace_0

Яtrace_02э
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1252793Ђ
В
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
annotationsЊ *
 zЯtrace_0
,:*2conv2d_19/kernel
:2conv2d_19/bias
Д2БЎ
ЃВ
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
annotationsЊ *
 0
@
0
1
2
3"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
х
еtrace_0
жtrace_12Њ
8__inference_batch_normalization_19_layer_call_fn_1252806
8__inference_batch_normalization_19_layer_call_fn_1252819Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zеtrace_0zжtrace_1

зtrace_0
иtrace_12р
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252837
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252855Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zзtrace_0zиtrace_1
 "
trackable_list_wrapper
+:)2batch_normalization_19/gamma
*:(2batch_normalization_19/beta
3:1 (2"batch_normalization_19/moving_mean
7:5 (2&batch_normalization_19/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
	variables
trainable_variables
 regularization_losses
Ђ__call__
+Ѓ&call_and_return_all_conditional_losses
'Ѓ"call_and_return_conditional_losses"
_generic_user_object
ј
оtrace_02й
2__inference_max_pooling2d_19_layer_call_fn_1252860Ђ
В
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
annotationsЊ *
 zоtrace_0

пtrace_02є
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1252865Ђ
В
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
annotationsЊ *
 zпtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Є	variables
Ѕtrainable_variables
Іregularization_losses
Ј__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
ў
хtrace_02п
8__inference_global_max_pooling2d_3_layer_call_fn_1252870Ђ
В
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
annotationsЊ *
 zхtrace_0

цtrace_02њ
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1252876Ђ
В
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
annotationsЊ *
 zцtrace_0
0
А0
Б1"
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
чnon_trainable_variables
шlayers
щmetrics
 ъlayer_regularization_losses
ыlayer_metrics
Њ	variables
Ћtrainable_variables
Ќregularization_losses
Ў__call__
+Џ&call_and_return_all_conditional_losses
'Џ"call_and_return_conditional_losses"
_generic_user_object
я
ьtrace_02а
)__inference_dense_9_layer_call_fn_1252885Ђ
В
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
annotationsЊ *
 zьtrace_0

эtrace_02ы
D__inference_dense_9_layer_call_and_return_conditional_losses_1252903Ђ
В
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
annotationsЊ *
 zэtrace_0
": 
2dense_9/kernel
:2dense_9/bias
0
И0
Й1"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
юnon_trainable_variables
яlayers
№metrics
 ёlayer_regularization_losses
ђlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
№
ѓtrace_02б
*__inference_dense_10_layer_call_fn_1252912Ђ
В
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
annotationsЊ *
 zѓtrace_0

єtrace_02ь
E__inference_dense_10_layer_call_and_return_conditional_losses_1252923Ђ
В
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
annotationsЊ *
 zєtrace_0
#:!
2dense_10/kernel
:2dense_10/bias
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ѕnon_trainable_variables
іlayers
їmetrics
 јlayer_regularization_losses
љlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
№
њtrace_02б
*__inference_dense_11_layer_call_fn_1252932Ђ
В
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
annotationsЊ *
 zњtrace_0

ћtrace_02ь
E__inference_dense_11_layer_call_and_return_conditional_losses_1252943Ђ
В
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
annotationsЊ *
 zћtrace_0
#:!
2dense_11/kernel
:2dense_11/bias
0
Ш0
Щ1"
trackable_list_wrapper
0
Ш0
Щ1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
ќnon_trainable_variables
§layers
ўmetrics
 џlayer_regularization_losses
layer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
ђ
trace_02г
,__inference_age-output_layer_call_fn_1252952Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02ю
G__inference_age-output_layer_call_and_return_conditional_losses_1252963Ђ
В
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
annotationsЊ *
 ztrace_0
$:"	2age-output/kernel
:2age-output/bias
0
а0
б1"
trackable_list_wrapper
0
а0
б1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
ѓ
trace_02д
-__inference_race-output_layer_call_fn_1252972Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02я
H__inference_race-output_layer_call_and_return_conditional_losses_1252983Ђ
В
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
annotationsЊ *
 ztrace_0
%:#	2race-output/kernel
:2race-output/bias
0
и0
й1"
trackable_list_wrapper
0
и0
й1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
в	variables
гtrainable_variables
дregularization_losses
ж__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
ѕ
trace_02ж
/__inference_gender-output_layer_call_fn_1252992Ђ
В
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
annotationsЊ *
 ztrace_0

trace_02ё
J__inference_gender-output_layer_call_and_return_conditional_losses_1253003Ђ
В
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
annotationsЊ *
 ztrace_0
':%	2gender-output/kernel
 :2gender-output/bias
j
40
51
N2
O3
h4
i5
6
7
8
9"
trackable_list_wrapper
Ю
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
16
17
18
19
20
21
22"
trackable_list_wrapper
X
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ћBј
)__inference_model_2_layer_call_fn_1251059input_4"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
)__inference_model_2_layer_call_fn_1251978inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
њBї
)__inference_model_2_layer_call_fn_1252071inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ћBј
)__inference_model_2_layer_call_fn_1251560input_4"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_1252238inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_1252405inputs"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_1251672input_4"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
D__inference_model_2_layer_call_and_return_conditional_losses_1251784input_4"П
ЖВВ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
ЬBЩ
%__inference_signature_wrapper_1251885input_4"
В
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
annotationsЊ *
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
пBм
+__inference_conv2d_15_layer_call_fn_1252414inputs"Ђ
В
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
annotationsЊ *
 
њBї
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1252425inputs"Ђ
В
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
annotationsЊ *
 
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
8__inference_batch_normalization_15_layer_call_fn_1252438inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
8__inference_batch_normalization_15_layer_call_fn_1252451inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252469inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_1252487inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
цBу
2__inference_max_pooling2d_15_layer_call_fn_1252492inputs"Ђ
В
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
annotationsЊ *
 
Bў
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1252497inputs"Ђ
В
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
annotationsЊ *
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
пBм
+__inference_conv2d_16_layer_call_fn_1252506inputs"Ђ
В
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
annotationsЊ *
 
њBї
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1252517inputs"Ђ
В
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
annotationsЊ *
 
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
8__inference_batch_normalization_16_layer_call_fn_1252530inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
8__inference_batch_normalization_16_layer_call_fn_1252543inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252561inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252579inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
цBу
2__inference_max_pooling2d_16_layer_call_fn_1252584inputs"Ђ
В
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
annotationsЊ *
 
Bў
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1252589inputs"Ђ
В
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
annotationsЊ *
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
пBм
+__inference_conv2d_17_layer_call_fn_1252598inputs"Ђ
В
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
annotationsЊ *
 
њBї
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1252609inputs"Ђ
В
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
annotationsЊ *
 
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
8__inference_batch_normalization_17_layer_call_fn_1252622inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
8__inference_batch_normalization_17_layer_call_fn_1252635inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252653inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252671inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
цBу
2__inference_max_pooling2d_17_layer_call_fn_1252676inputs"Ђ
В
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
annotationsЊ *
 
Bў
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1252681inputs"Ђ
В
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
annotationsЊ *
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
пBм
+__inference_conv2d_18_layer_call_fn_1252690inputs"Ђ
В
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
annotationsЊ *
 
њBї
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1252701inputs"Ђ
В
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
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
8__inference_batch_normalization_18_layer_call_fn_1252714inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
8__inference_batch_normalization_18_layer_call_fn_1252727inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252745inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252763inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
цBу
2__inference_max_pooling2d_18_layer_call_fn_1252768inputs"Ђ
В
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
annotationsЊ *
 
Bў
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1252773inputs"Ђ
В
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
annotationsЊ *
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
пBм
+__inference_conv2d_19_layer_call_fn_1252782inputs"Ђ
В
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
annotationsЊ *
 
њBї
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1252793inputs"Ђ
В
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
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
§Bњ
8__inference_batch_normalization_19_layer_call_fn_1252806inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
8__inference_batch_normalization_19_layer_call_fn_1252819inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252837inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252855inputs"Г
ЊВІ
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
цBу
2__inference_max_pooling2d_19_layer_call_fn_1252860inputs"Ђ
В
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
annotationsЊ *
 
Bў
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1252865inputs"Ђ
В
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
annotationsЊ *
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
ьBщ
8__inference_global_max_pooling2d_3_layer_call_fn_1252870inputs"Ђ
В
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
annotationsЊ *
 
B
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1252876inputs"Ђ
В
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
annotationsЊ *
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
нBк
)__inference_dense_9_layer_call_fn_1252885inputs"Ђ
В
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
annotationsЊ *
 
јBѕ
D__inference_dense_9_layer_call_and_return_conditional_losses_1252903inputs"Ђ
В
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
annotationsЊ *
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
оBл
*__inference_dense_10_layer_call_fn_1252912inputs"Ђ
В
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
annotationsЊ *
 
љBі
E__inference_dense_10_layer_call_and_return_conditional_losses_1252923inputs"Ђ
В
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
annotationsЊ *
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
оBл
*__inference_dense_11_layer_call_fn_1252932inputs"Ђ
В
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
annotationsЊ *
 
љBі
E__inference_dense_11_layer_call_and_return_conditional_losses_1252943inputs"Ђ
В
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
annotationsЊ *
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
рBн
,__inference_age-output_layer_call_fn_1252952inputs"Ђ
В
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
annotationsЊ *
 
ћBј
G__inference_age-output_layer_call_and_return_conditional_losses_1252963inputs"Ђ
В
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
annotationsЊ *
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
сBо
-__inference_race-output_layer_call_fn_1252972inputs"Ђ
В
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
annotationsЊ *
 
ќBљ
H__inference_race-output_layer_call_and_return_conditional_losses_1252983inputs"Ђ
В
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
annotationsЊ *
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
уBр
/__inference_gender-output_layer_call_fn_1252992inputs"Ђ
В
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
annotationsЊ *
 
ўBћ
J__inference_gender-output_layer_call_and_return_conditional_losses_1253003inputs"Ђ
В
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
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
R
	variables
	keras_api

total

count"
_tf_keras_metric
R
 	variables
Ё	keras_api

Ђtotal

Ѓcount"
_tf_keras_metric
R
Є	variables
Ѕ	keras_api

Іtotal

Їcount"
_tf_keras_metric
c
Ј	variables
Љ	keras_api

Њtotal

Ћcount
Ќ
_fn_kwargs"
_tf_keras_metric
c
­	variables
Ў	keras_api

Џtotal

Аcount
Б
_fn_kwargs"
_tf_keras_metric
c
В	variables
Г	keras_api

Дtotal

Еcount
Ж
_fn_kwargs"
_tf_keras_metric
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
0
Ђ0
Ѓ1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
:  (2total
:  (2count
0
І0
Ї1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
:  (2total
:  (2count
0
Њ0
Ћ1"
trackable_list_wrapper
.
Ј	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Џ0
А1"
trackable_list_wrapper
.
­	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Д0
Е1"
trackable_list_wrapper
.
В	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
4:2 2RMSprop/conv2d_15/kernel/rms
&:$ 2RMSprop/conv2d_15/bias/rms
4:2 2(RMSprop/batch_normalization_15/gamma/rms
3:1 2'RMSprop/batch_normalization_15/beta/rms
4:2 @2RMSprop/conv2d_16/kernel/rms
&:$@2RMSprop/conv2d_16/bias/rms
4:2@2(RMSprop/batch_normalization_16/gamma/rms
3:1@2'RMSprop/batch_normalization_16/beta/rms
5:3@2RMSprop/conv2d_17/kernel/rms
':%2RMSprop/conv2d_17/bias/rms
5:32(RMSprop/batch_normalization_17/gamma/rms
4:22'RMSprop/batch_normalization_17/beta/rms
6:42RMSprop/conv2d_18/kernel/rms
':%2RMSprop/conv2d_18/bias/rms
5:32(RMSprop/batch_normalization_18/gamma/rms
4:22'RMSprop/batch_normalization_18/beta/rms
6:42RMSprop/conv2d_19/kernel/rms
':%2RMSprop/conv2d_19/bias/rms
5:32(RMSprop/batch_normalization_19/gamma/rms
4:22'RMSprop/batch_normalization_19/beta/rms
,:*
2RMSprop/dense_9/kernel/rms
%:#2RMSprop/dense_9/bias/rms
-:+
2RMSprop/dense_10/kernel/rms
&:$2RMSprop/dense_10/bias/rms
-:+
2RMSprop/dense_11/kernel/rms
&:$2RMSprop/dense_11/bias/rms
.:,	2RMSprop/age-output/kernel/rms
':%2RMSprop/age-output/bias/rms
/:-	2RMSprop/race-output/kernel/rms
(:&2RMSprop/race-output/bias/rms
1:/	2 RMSprop/gender-output/kernel/rms
*:(2RMSprop/gender-output/bias/rms
PbN
beta:0D__inference_dense_9_layer_call_and_return_conditional_losses_1252903
SbQ
	BiasAdd:0D__inference_dense_9_layer_call_and_return_conditional_losses_1252903
PbN
beta:0D__inference_dense_9_layer_call_and_return_conditional_losses_1250908
SbQ
	BiasAdd:0D__inference_dense_9_layer_call_and_return_conditional_losses_1250908
XbV
dense_9/beta:0D__inference_model_2_layer_call_and_return_conditional_losses_1252405
[bY
dense_9/BiasAdd:0D__inference_model_2_layer_call_and_return_conditional_losses_1252405
XbV
dense_9/beta:0D__inference_model_2_layer_call_and_return_conditional_losses_1252238
[bY
dense_9/BiasAdd:0D__inference_model_2_layer_call_and_return_conditional_losses_1252238
>b<
model_2/dense_9/beta:0"__inference__wrapped_model_1250320
Ab?
model_2/dense_9/BiasAdd:0"__inference__wrapped_model_1250320а
"__inference__wrapped_model_1250320Љ@()2345BCLMNO\]fghivwРСИЙАБийабШЩ:Ђ7
0Ђ-
+(
input_4џџџџџџџџџЦЦ
Њ "ЈЊЄ
2

age-output$!

age-outputџџџџџџџџџ
8
gender-output'$
gender-outputџџџџџџџџџ
4
race-output%"
race-outputџџџџџџџџџЊ
G__inference_age-output_layer_call_and_return_conditional_losses_1252963_ШЩ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
,__inference_age-output_layer_call_fn_1252952RШЩ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџю
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_12524692345MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 ю
S__inference_batch_normalization_15_layer_call_and_return_conditional_losses_12524872345MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
 Ц
8__inference_batch_normalization_15_layer_call_fn_12524382345MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ Ц
8__inference_batch_normalization_15_layer_call_fn_12524512345MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ 
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ ю
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252561LMNOMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 ю
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_1252579LMNOMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
 Ц
8__inference_batch_normalization_16_layer_call_fn_1252530LMNOMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@Ц
8__inference_batch_normalization_16_layer_call_fn_1252543LMNOMЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџ@№
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252653fghiNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 №
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_1252671fghiNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
8__inference_batch_normalization_17_layer_call_fn_1252622fghiNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџШ
8__inference_batch_normalization_17_layer_call_fn_1252635fghiNЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџє
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252745NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 є
S__inference_batch_normalization_18_layer_call_and_return_conditional_losses_1252763NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
8__inference_batch_normalization_18_layer_call_fn_1252714NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЬ
8__inference_batch_normalization_18_layer_call_fn_1252727NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџє
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252837NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 є
S__inference_batch_normalization_19_layer_call_and_return_conditional_losses_1252855NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "@Ђ=
63
0,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ь
8__inference_batch_normalization_19_layer_call_fn_1252806NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџЬ
8__inference_batch_normalization_19_layer_call_fn_1252819NЂK
DЂA
;8
inputs,џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "30,џџџџџџџџџџџџџџџџџџџџџџџџџџџК
F__inference_conv2d_15_layer_call_and_return_conditional_losses_1252425p()9Ђ6
/Ђ,
*'
inputsџџџџџџџџџЦЦ
Њ "/Ђ,
%"
0џџџџџџџџџФФ 
 
+__inference_conv2d_15_layer_call_fn_1252414c()9Ђ6
/Ђ,
*'
inputsџџџџџџџџџЦЦ
Њ ""џџџџџџџџџФФ Ж
F__inference_conv2d_16_layer_call_and_return_conditional_losses_1252517lBC7Ђ4
-Ђ*
(%
inputsџџџџџџџџџbb 
Њ "-Ђ*
# 
0џџџџџџџџџ``@
 
+__inference_conv2d_16_layer_call_fn_1252506_BC7Ђ4
-Ђ*
(%
inputsџџџџџџџџџbb 
Њ " џџџџџџџџџ``@З
F__inference_conv2d_17_layer_call_and_return_conditional_losses_1252609m\]7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ00@
Њ ".Ђ+
$!
0џџџџџџџџџ..
 
+__inference_conv2d_17_layer_call_fn_1252598`\]7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ00@
Њ "!џџџџџџџџџ..И
F__inference_conv2d_18_layer_call_and_return_conditional_losses_1252701nvw8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџ
 
+__inference_conv2d_18_layer_call_fn_1252690avw8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ
Њ "!џџџџџџџџџК
F__inference_conv2d_19_layer_call_and_return_conditional_losses_1252793p8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ


Њ ".Ђ+
$!
0џџџџџџџџџ
 
+__inference_conv2d_19_layer_call_fn_1252782c8Ђ5
.Ђ+
)&
inputsџџџџџџџџџ


Њ "!џџџџџџџџџЉ
E__inference_dense_10_layer_call_and_return_conditional_losses_1252923`ИЙ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_dense_10_layer_call_fn_1252912SИЙ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЉ
E__inference_dense_11_layer_call_and_return_conditional_losses_1252943`РС0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_dense_11_layer_call_fn_1252932SРС0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЈ
D__inference_dense_9_layer_call_and_return_conditional_losses_1252903`АБ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 
)__inference_dense_9_layer_call_fn_1252885SАБ0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџ­
J__inference_gender-output_layer_call_and_return_conditional_losses_1253003_ий0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
/__inference_gender-output_layer_call_fn_1252992Rий0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџм
S__inference_global_max_pooling2d_3_layer_call_and_return_conditional_losses_1252876RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ".Ђ+
$!
0џџџџџџџџџџџџџџџџџџ
 Г
8__inference_global_max_pooling2d_3_layer_call_fn_1252870wRЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "!џџџџџџџџџџџџџџџџџџП
$__inference_internal_grad_fn_1253212зиgЂd
]ЂZ

 
)&
result_grads_0џџџџџџџџџ
)&
result_grads_1џџџџџџџџџ
Њ "%"

 

1џџџџџџџџџП
$__inference_internal_grad_fn_1253230йкgЂd
]ЂZ

 
)&
result_grads_0џџџџџџџџџ
)&
result_grads_1џџџџџџџџџ
Њ "%"

 

1џџџџџџџџџП
$__inference_internal_grad_fn_1253248лмgЂd
]ЂZ

 
)&
result_grads_0џџџџџџџџџ
)&
result_grads_1џџџџџџџџџ
Њ "%"

 

1џџџџџџџџџП
$__inference_internal_grad_fn_1253266ноgЂd
]ЂZ

 
)&
result_grads_0џџџџџџџџџ
)&
result_grads_1џџџџџџџџџ
Њ "%"

 

1џџџџџџџџџП
$__inference_internal_grad_fn_1253284прgЂd
]ЂZ

 
)&
result_grads_0џџџџџџџџџ
)&
result_grads_1џџџџџџџџџ
Њ "%"

 

1џџџџџџџџџ№
M__inference_max_pooling2d_15_layer_call_and_return_conditional_losses_1252497RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_15_layer_call_fn_1252492RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_16_layer_call_and_return_conditional_losses_1252589RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_16_layer_call_fn_1252584RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_17_layer_call_and_return_conditional_losses_1252681RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_17_layer_call_fn_1252676RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_18_layer_call_and_return_conditional_losses_1252773RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_18_layer_call_fn_1252768RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ№
M__inference_max_pooling2d_19_layer_call_and_return_conditional_losses_1252865RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ш
2__inference_max_pooling2d_19_layer_call_fn_1252860RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџЛ
D__inference_model_2_layer_call_and_return_conditional_losses_1251672ђ@()2345BCLMNO\]fghivwРСИЙАБийабШЩBЂ?
8Ђ5
+(
input_4џџџџџџџџџЦЦ
p 

 
Њ "jЂg
`]

0/0џџџџџџџџџ

0/1џџџџџџџџџ

0/2џџџџџџџџџ
 Л
D__inference_model_2_layer_call_and_return_conditional_losses_1251784ђ@()2345BCLMNO\]fghivwРСИЙАБийабШЩBЂ?
8Ђ5
+(
input_4џџџџџџџџџЦЦ
p

 
Њ "jЂg
`]

0/0џџџџџџџџџ

0/1џџџџџџџџџ

0/2џџџџџџџџџ
 К
D__inference_model_2_layer_call_and_return_conditional_losses_1252238ё@()2345BCLMNO\]fghivwРСИЙАБийабШЩAЂ>
7Ђ4
*'
inputsџџџџџџџџџЦЦ
p 

 
Њ "jЂg
`]

0/0џџџџџџџџџ

0/1џџџџџџџџџ

0/2џџџџџџџџџ
 К
D__inference_model_2_layer_call_and_return_conditional_losses_1252405ё@()2345BCLMNO\]fghivwРСИЙАБийабШЩAЂ>
7Ђ4
*'
inputsџџџџџџџџџЦЦ
p

 
Њ "jЂg
`]

0/0џџџџџџџџџ

0/1џџџџџџџџџ

0/2џџџџџџџџџ
 
)__inference_model_2_layer_call_fn_1251059т@()2345BCLMNO\]fghivwРСИЙАБийабШЩBЂ?
8Ђ5
+(
input_4џџџџџџџџџЦЦ
p 

 
Њ "ZW

0џџџџџџџџџ

1џџџџџџџџџ

2џџџџџџџџџ
)__inference_model_2_layer_call_fn_1251560т@()2345BCLMNO\]fghivwРСИЙАБийабШЩBЂ?
8Ђ5
+(
input_4џџџџџџџџџЦЦ
p

 
Њ "ZW

0џџџџџџџџџ

1џџџџџџџџџ

2џџџџџџџџџ
)__inference_model_2_layer_call_fn_1251978с@()2345BCLMNO\]fghivwРСИЙАБийабШЩAЂ>
7Ђ4
*'
inputsџџџџџџџџџЦЦ
p 

 
Њ "ZW

0џџџџџџџџџ

1џџџџџџџџџ

2џџџџџџџџџ
)__inference_model_2_layer_call_fn_1252071с@()2345BCLMNO\]fghivwРСИЙАБийабШЩAЂ>
7Ђ4
*'
inputsџџџџџџџџџЦЦ
p

 
Њ "ZW

0џџџџџџџџџ

1џџџџџџџџџ

2џџџџџџџџџЋ
H__inference_race-output_layer_call_and_return_conditional_losses_1252983_аб0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 
-__inference_race-output_layer_call_fn_1252972Rаб0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџо
%__inference_signature_wrapper_1251885Д@()2345BCLMNO\]fghivwРСИЙАБийабШЩEЂB
Ђ 
;Њ8
6
input_4+(
input_4џџџџџџџџџЦЦ"ЈЊЄ
2

age-output$!

age-outputџџџџџџџџџ
8
gender-output'$
gender-outputџџџџџџџџџ
4
race-output%"
race-outputџџџџџџџџџ