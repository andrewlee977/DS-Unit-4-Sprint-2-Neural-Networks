��
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
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
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
��*
dtype0
s
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_32/bias
l
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes	
:�*
dtype0
|
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��* 
shared_namedense_33/kernel
u
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel* 
_output_shapes
:
��*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:�*
dtype0
{
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� * 
shared_namedense_34/kernel
t
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*
_output_shapes
:	� *
dtype0
r
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_34/bias
k
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes
: *
dtype0
z
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
* 
shared_namedense_35/kernel
s
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes

: 
*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:
*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
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
�
Nadam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameNadam/dense_32/kernel/m
�
+Nadam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_32/kernel/m* 
_output_shapes
:
��*
dtype0
�
Nadam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameNadam/dense_32/bias/m
|
)Nadam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_32/bias/m*
_output_shapes	
:�*
dtype0
�
Nadam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameNadam/dense_33/kernel/m
�
+Nadam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_33/kernel/m* 
_output_shapes
:
��*
dtype0
�
Nadam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameNadam/dense_33/bias/m
|
)Nadam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_33/bias/m*
_output_shapes	
:�*
dtype0
�
Nadam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *(
shared_nameNadam/dense_34/kernel/m
�
+Nadam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_34/kernel/m*
_output_shapes
:	� *
dtype0
�
Nadam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameNadam/dense_34/bias/m
{
)Nadam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_34/bias/m*
_output_shapes
: *
dtype0
�
Nadam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*(
shared_nameNadam/dense_35/kernel/m
�
+Nadam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_35/kernel/m*
_output_shapes

: 
*
dtype0
�
Nadam/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameNadam/dense_35/bias/m
{
)Nadam/dense_35/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_35/bias/m*
_output_shapes
:
*
dtype0
�
Nadam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameNadam/dense_32/kernel/v
�
+Nadam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_32/kernel/v* 
_output_shapes
:
��*
dtype0
�
Nadam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameNadam/dense_32/bias/v
|
)Nadam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_32/bias/v*
_output_shapes	
:�*
dtype0
�
Nadam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*(
shared_nameNadam/dense_33/kernel/v
�
+Nadam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_33/kernel/v* 
_output_shapes
:
��*
dtype0
�
Nadam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*&
shared_nameNadam/dense_33/bias/v
|
)Nadam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_33/bias/v*
_output_shapes	
:�*
dtype0
�
Nadam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	� *(
shared_nameNadam/dense_34/kernel/v
�
+Nadam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_34/kernel/v*
_output_shapes
:	� *
dtype0
�
Nadam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameNadam/dense_34/bias/v
{
)Nadam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_34/bias/v*
_output_shapes
: *
dtype0
�
Nadam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*(
shared_nameNadam/dense_35/kernel/v
�
+Nadam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_35/kernel/v*
_output_shapes

: 
*
dtype0
�
Nadam/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameNadam/dense_35/bias/v
{
)Nadam/dense_35/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_35/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
�8
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�7
value�7B�7 B�7
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
R
#regularization_losses
$trainable_variables
%	variables
&	keras_api
h

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
R
-regularization_losses
.trainable_variables
/	variables
0	keras_api
h

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
�
7iter

8beta_1

9beta_2
	:decay
;learning_rate
<momentum_cachemumvmwmx'my(mz1m{2m|v}v~vv�'v�(v�1v�2v�
 
8
0
1
2
3
'4
(5
16
27
8
0
1
2
3
'4
(5
16
27
�
=non_trainable_variables

regularization_losses
>layer_metrics

?layers
@layer_regularization_losses
Ametrics
trainable_variables
	variables
 
 
 
 
�
Bnon_trainable_variables
regularization_losses
Clayer_metrics
Dlayer_regularization_losses

Elayers
Fmetrics
trainable_variables
	variables
[Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
Gnon_trainable_variables
regularization_losses
Hlayer_metrics
Ilayer_regularization_losses

Jlayers
Kmetrics
trainable_variables
	variables
 
 
 
�
Lnon_trainable_variables
regularization_losses
Mlayer_metrics
Nlayer_regularization_losses

Olayers
Pmetrics
trainable_variables
	variables
[Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
�
Qnon_trainable_variables
regularization_losses
Rlayer_metrics
Slayer_regularization_losses

Tlayers
Umetrics
 trainable_variables
!	variables
 
 
 
�
Vnon_trainable_variables
#regularization_losses
Wlayer_metrics
Xlayer_regularization_losses

Ylayers
Zmetrics
$trainable_variables
%	variables
[Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_34/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1

'0
(1
�
[non_trainable_variables
)regularization_losses
\layer_metrics
]layer_regularization_losses

^layers
_metrics
*trainable_variables
+	variables
 
 
 
�
`non_trainable_variables
-regularization_losses
alayer_metrics
blayer_regularization_losses

clayers
dmetrics
.trainable_variables
/	variables
[Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_35/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

10
21

10
21
�
enon_trainable_variables
3regularization_losses
flayer_metrics
glayer_regularization_losses

hlayers
imetrics
4trainable_variables
5	variables
IG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE
 
 
8
0
1
2
3
4
5
6
7
 

j0
k1
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
4
	ltotal
	mcount
n	variables
o	keras_api
D
	ptotal
	qcount
r
_fn_kwargs
s	variables
t	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

l0
m1

n	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

p0
q1

s	variables
}
VARIABLE_VALUENadam/dense_32/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_32/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_33/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_33/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_34/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_34/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_35/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_35/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_32/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_32/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_33/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_33/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_34/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_34/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUENadam/dense_35/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUENadam/dense_35/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_flatten_8_inputPlaceholder*+
_output_shapes
:���������*
dtype0* 
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_flatten_8_inputdense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_320933
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Nadam/dense_32/kernel/m/Read/ReadVariableOp)Nadam/dense_32/bias/m/Read/ReadVariableOp+Nadam/dense_33/kernel/m/Read/ReadVariableOp)Nadam/dense_33/bias/m/Read/ReadVariableOp+Nadam/dense_34/kernel/m/Read/ReadVariableOp)Nadam/dense_34/bias/m/Read/ReadVariableOp+Nadam/dense_35/kernel/m/Read/ReadVariableOp)Nadam/dense_35/bias/m/Read/ReadVariableOp+Nadam/dense_32/kernel/v/Read/ReadVariableOp)Nadam/dense_32/bias/v/Read/ReadVariableOp+Nadam/dense_33/kernel/v/Read/ReadVariableOp)Nadam/dense_33/bias/v/Read/ReadVariableOp+Nadam/dense_34/kernel/v/Read/ReadVariableOp)Nadam/dense_34/bias/v/Read/ReadVariableOp+Nadam/dense_35/kernel/v/Read/ReadVariableOp)Nadam/dense_35/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
GPU 2J 8� *(
f#R!
__inference__traced_save_321286
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttotal_1count_1Nadam/dense_32/kernel/mNadam/dense_32/bias/mNadam/dense_33/kernel/mNadam/dense_33/bias/mNadam/dense_34/kernel/mNadam/dense_34/bias/mNadam/dense_35/kernel/mNadam/dense_35/bias/mNadam/dense_32/kernel/vNadam/dense_32/bias/vNadam/dense_33/kernel/vNadam/dense_33/bias/vNadam/dense_34/kernel/vNadam/dense_34/bias/vNadam/dense_35/kernel/vNadam/dense_35/bias/v*.
Tin'
%2#*
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
GPU 2J 8� *+
f&R$
"__inference__traced_restore_321398°
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_320622

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�5
�
!__inference__wrapped_model_320612
flatten_8_input8
4sequential_8_dense_32_matmul_readvariableop_resource9
5sequential_8_dense_32_biasadd_readvariableop_resource8
4sequential_8_dense_33_matmul_readvariableop_resource9
5sequential_8_dense_33_biasadd_readvariableop_resource8
4sequential_8_dense_34_matmul_readvariableop_resource9
5sequential_8_dense_34_biasadd_readvariableop_resource8
4sequential_8_dense_35_matmul_readvariableop_resource9
5sequential_8_dense_35_biasadd_readvariableop_resource
identity��,sequential_8/dense_32/BiasAdd/ReadVariableOp�+sequential_8/dense_32/MatMul/ReadVariableOp�,sequential_8/dense_33/BiasAdd/ReadVariableOp�+sequential_8/dense_33/MatMul/ReadVariableOp�,sequential_8/dense_34/BiasAdd/ReadVariableOp�+sequential_8/dense_34/MatMul/ReadVariableOp�,sequential_8/dense_35/BiasAdd/ReadVariableOp�+sequential_8/dense_35/MatMul/ReadVariableOp�
sequential_8/flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
sequential_8/flatten_8/Const�
sequential_8/flatten_8/ReshapeReshapeflatten_8_input%sequential_8/flatten_8/Const:output:0*
T0*(
_output_shapes
:����������2 
sequential_8/flatten_8/Reshape�
+sequential_8/dense_32/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_8/dense_32/MatMul/ReadVariableOp�
sequential_8/dense_32/MatMulMatMul'sequential_8/flatten_8/Reshape:output:03sequential_8/dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_8/dense_32/MatMul�
,sequential_8/dense_32/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_32_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_8/dense_32/BiasAdd/ReadVariableOp�
sequential_8/dense_32/BiasAddBiasAdd&sequential_8/dense_32/MatMul:product:04sequential_8/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_8/dense_32/BiasAdd�
sequential_8/re_lu_24/LeakyRelu	LeakyRelu&sequential_8/dense_32/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2!
sequential_8/re_lu_24/LeakyRelu�
+sequential_8/dense_33/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_33_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02-
+sequential_8/dense_33/MatMul/ReadVariableOp�
sequential_8/dense_33/MatMulMatMul-sequential_8/re_lu_24/LeakyRelu:activations:03sequential_8/dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_8/dense_33/MatMul�
,sequential_8/dense_33/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02.
,sequential_8/dense_33/BiasAdd/ReadVariableOp�
sequential_8/dense_33/BiasAddBiasAdd&sequential_8/dense_33/MatMul:product:04sequential_8/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
sequential_8/dense_33/BiasAdd�
sequential_8/re_lu_25/LeakyRelu	LeakyRelu&sequential_8/dense_33/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2!
sequential_8/re_lu_25/LeakyRelu�
+sequential_8/dense_34/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_34_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02-
+sequential_8/dense_34/MatMul/ReadVariableOp�
sequential_8/dense_34/MatMulMatMul-sequential_8/re_lu_25/LeakyRelu:activations:03sequential_8/dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
sequential_8/dense_34/MatMul�
,sequential_8/dense_34/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_8/dense_34/BiasAdd/ReadVariableOp�
sequential_8/dense_34/BiasAddBiasAdd&sequential_8/dense_34/MatMul:product:04sequential_8/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
sequential_8/dense_34/BiasAdd�
sequential_8/re_lu_26/LeakyRelu	LeakyRelu&sequential_8/dense_34/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%
�#<2!
sequential_8/re_lu_26/LeakyRelu�
+sequential_8/dense_35/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_35_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02-
+sequential_8/dense_35/MatMul/ReadVariableOp�
sequential_8/dense_35/MatMulMatMul-sequential_8/re_lu_26/LeakyRelu:activations:03sequential_8/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
sequential_8/dense_35/MatMul�
,sequential_8/dense_35/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02.
,sequential_8/dense_35/BiasAdd/ReadVariableOp�
sequential_8/dense_35/BiasAddBiasAdd&sequential_8/dense_35/MatMul:product:04sequential_8/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
sequential_8/dense_35/BiasAdd�
sequential_8/dense_35/SoftmaxSoftmax&sequential_8/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
sequential_8/dense_35/Softmax�
IdentityIdentity'sequential_8/dense_35/Softmax:softmax:0-^sequential_8/dense_32/BiasAdd/ReadVariableOp,^sequential_8/dense_32/MatMul/ReadVariableOp-^sequential_8/dense_33/BiasAdd/ReadVariableOp,^sequential_8/dense_33/MatMul/ReadVariableOp-^sequential_8/dense_34/BiasAdd/ReadVariableOp,^sequential_8/dense_34/MatMul/ReadVariableOp-^sequential_8/dense_35/BiasAdd/ReadVariableOp,^sequential_8/dense_35/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2\
,sequential_8/dense_32/BiasAdd/ReadVariableOp,sequential_8/dense_32/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_32/MatMul/ReadVariableOp+sequential_8/dense_32/MatMul/ReadVariableOp2\
,sequential_8/dense_33/BiasAdd/ReadVariableOp,sequential_8/dense_33/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_33/MatMul/ReadVariableOp+sequential_8/dense_33/MatMul/ReadVariableOp2\
,sequential_8/dense_34/BiasAdd/ReadVariableOp,sequential_8/dense_34/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_34/MatMul/ReadVariableOp+sequential_8/dense_34/MatMul/ReadVariableOp2\
,sequential_8/dense_35/BiasAdd/ReadVariableOp,sequential_8/dense_35/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_35/MatMul/ReadVariableOp+sequential_8/dense_35/MatMul/ReadVariableOp:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�	
�
D__inference_dense_35_layer_call_and_return_conditional_losses_320758

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
E
)__inference_re_lu_26_layer_call_fn_321141

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_3207392
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
~
)__inference_dense_34_layer_call_fn_321131

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_3207182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_320883

inputs
dense_32_320859
dense_32_320861
dense_33_320865
dense_33_320867
dense_34_320871
dense_34_320873
dense_35_320877
dense_35_320879
identity�� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3206222
flatten_8/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_32_320859dense_32_320861*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_3206402"
 dense_32/StatefulPartitionedCall�
re_lu_24/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_24_layer_call_and_return_conditional_losses_3206612
re_lu_24/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall!re_lu_24/PartitionedCall:output:0dense_33_320865dense_33_320867*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_3206792"
 dense_33/StatefulPartitionedCall�
re_lu_25/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_3207002
re_lu_25/PartitionedCall�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0dense_34_320871dense_34_320873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_3207182"
 dense_34/StatefulPartitionedCall�
re_lu_26/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_3207392
re_lu_26/PartitionedCall�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall!re_lu_26/PartitionedCall:output:0dense_35_320877dense_35_320879*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_3207582"
 dense_35/StatefulPartitionedCall�
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
E
)__inference_re_lu_24_layer_call_fn_321083

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_24_layer_call_and_return_conditional_losses_3206612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_24_layer_call_and_return_conditional_losses_320661

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_26_layer_call_and_return_conditional_losses_320739

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:��������� *
alpha%
�#<2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
D__inference_dense_32_layer_call_and_return_conditional_losses_320640

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_32_layer_call_and_return_conditional_losses_321064

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
~
)__inference_dense_32_layer_call_fn_321073

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_3206402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_26_layer_call_and_return_conditional_losses_321136

inputs
identityd
	LeakyRelu	LeakyReluinputs*'
_output_shapes
:��������� *
alpha%
�#<2
	LeakyReluk
IdentityIdentityLeakyRelu:activations:0*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*&
_input_shapes
:��������� :O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�
`
D__inference_re_lu_25_layer_call_and_return_conditional_losses_320700

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
F
*__inference_flatten_8_layer_call_fn_321054

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3206222
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
~
)__inference_dense_35_layer_call_fn_321161

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_3207582
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�	
�
D__inference_dense_35_layer_call_and_return_conditional_losses_321152

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������
2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*.
_input_shapes
:��������� ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:��������� 
 
_user_specified_nameinputs
�"
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_320775
flatten_8_input
dense_32_320651
dense_32_320653
dense_33_320690
dense_33_320692
dense_34_320729
dense_34_320731
dense_35_320769
dense_35_320771
identity�� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallflatten_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3206222
flatten_8/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_32_320651dense_32_320653*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_3206402"
 dense_32/StatefulPartitionedCall�
re_lu_24/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_24_layer_call_and_return_conditional_losses_3206612
re_lu_24/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall!re_lu_24/PartitionedCall:output:0dense_33_320690dense_33_320692*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_3206792"
 dense_33/StatefulPartitionedCall�
re_lu_25/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_3207002
re_lu_25/PartitionedCall�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0dense_34_320729dense_34_320731*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_3207182"
 dense_34/StatefulPartitionedCall�
re_lu_26/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_3207392
re_lu_26/PartitionedCall�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall!re_lu_26/PartitionedCall:output:0dense_35_320769dense_35_320771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_3207582"
 dense_35/StatefulPartitionedCall�
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�)
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_321001

inputs+
'dense_32_matmul_readvariableop_resource,
(dense_32_biasadd_readvariableop_resource+
'dense_33_matmul_readvariableop_resource,
(dense_33_biasadd_readvariableop_resource+
'dense_34_matmul_readvariableop_resource,
(dense_34_biasadd_readvariableop_resource+
'dense_35_matmul_readvariableop_resource,
(dense_35_biasadd_readvariableop_resource
identity��dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOps
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten_8/Const�
flatten_8/ReshapeReshapeinputsflatten_8/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_8/Reshape�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_32/MatMul/ReadVariableOp�
dense_32/MatMulMatMulflatten_8/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_32/MatMul�
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_32/BiasAdd/ReadVariableOp�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_32/BiasAdd�
re_lu_24/LeakyRelu	LeakyReludense_32/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2
re_lu_24/LeakyRelu�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_33/MatMul/ReadVariableOp�
dense_33/MatMulMatMul re_lu_24/LeakyRelu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_33/MatMul�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_33/BiasAdd/ReadVariableOp�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_33/BiasAdd�
re_lu_25/LeakyRelu	LeakyReludense_33/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2
re_lu_25/LeakyRelu�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02 
dense_34/MatMul/ReadVariableOp�
dense_34/MatMulMatMul re_lu_25/LeakyRelu:activations:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_34/MatMul�
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_34/BiasAdd/ReadVariableOp�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_34/BiasAdd�
re_lu_26/LeakyRelu	LeakyReludense_34/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%
�#<2
re_lu_26/LeakyRelu�
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02 
dense_35/MatMul/ReadVariableOp�
dense_35/MatMulMatMul re_lu_26/LeakyRelu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_35/MatMul�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_35/BiasAdd/ReadVariableOp�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_35/BiasAdd|
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_35/Softmax�
IdentityIdentitydense_35/Softmax:softmax:0 ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
"__inference__traced_restore_321398
file_prefix$
 assignvariableop_dense_32_kernel$
 assignvariableop_1_dense_32_bias&
"assignvariableop_2_dense_33_kernel$
 assignvariableop_3_dense_33_bias&
"assignvariableop_4_dense_34_kernel$
 assignvariableop_5_dense_34_bias&
"assignvariableop_6_dense_35_kernel$
 assignvariableop_7_dense_35_bias!
assignvariableop_8_nadam_iter#
assignvariableop_9_nadam_beta_1$
 assignvariableop_10_nadam_beta_2#
assignvariableop_11_nadam_decay+
'assignvariableop_12_nadam_learning_rate,
(assignvariableop_13_nadam_momentum_cache
assignvariableop_14_total
assignvariableop_15_count
assignvariableop_16_total_1
assignvariableop_17_count_1/
+assignvariableop_18_nadam_dense_32_kernel_m-
)assignvariableop_19_nadam_dense_32_bias_m/
+assignvariableop_20_nadam_dense_33_kernel_m-
)assignvariableop_21_nadam_dense_33_bias_m/
+assignvariableop_22_nadam_dense_34_kernel_m-
)assignvariableop_23_nadam_dense_34_bias_m/
+assignvariableop_24_nadam_dense_35_kernel_m-
)assignvariableop_25_nadam_dense_35_bias_m/
+assignvariableop_26_nadam_dense_32_kernel_v-
)assignvariableop_27_nadam_dense_32_bias_v/
+assignvariableop_28_nadam_dense_33_kernel_v-
)assignvariableop_29_nadam_dense_33_bias_v/
+assignvariableop_30_nadam_dense_34_kernel_v-
)assignvariableop_31_nadam_dense_34_bias_v/
+assignvariableop_32_nadam_dense_35_kernel_v-
)assignvariableop_33_nadam_dense_35_bias_v
identity_35��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_dense_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_32_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_33_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_33_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_34_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_34_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_35_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_35_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOp assignvariableop_10_nadam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_nadam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOp'assignvariableop_12_nadam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp(assignvariableop_13_nadam_momentum_cacheIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_nadam_dense_32_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_nadam_dense_32_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_nadam_dense_33_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_nadam_dense_33_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_nadam_dense_34_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_nadam_dense_34_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_nadam_dense_35_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_nadam_dense_35_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_nadam_dense_32_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_nadam_dense_32_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp+assignvariableop_28_nadam_dense_33_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp)assignvariableop_29_nadam_dense_33_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp+assignvariableop_30_nadam_dense_34_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp)assignvariableop_31_nadam_dense_34_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp+assignvariableop_32_nadam_dense_35_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp)assignvariableop_33_nadam_dense_35_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34�
Identity_35IdentityIdentity_34:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_35"#
identity_35Identity_35:output:0*�
_input_shapes�
�: ::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_33AssignVariableOp_332(
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
�
�
$__inference_signature_wrapper_320933
flatten_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_3206122
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�)
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_320967

inputs+
'dense_32_matmul_readvariableop_resource,
(dense_32_biasadd_readvariableop_resource+
'dense_33_matmul_readvariableop_resource,
(dense_33_biasadd_readvariableop_resource+
'dense_34_matmul_readvariableop_resource,
(dense_34_biasadd_readvariableop_resource+
'dense_35_matmul_readvariableop_resource,
(dense_35_biasadd_readvariableop_resource
identity��dense_32/BiasAdd/ReadVariableOp�dense_32/MatMul/ReadVariableOp�dense_33/BiasAdd/ReadVariableOp�dense_33/MatMul/ReadVariableOp�dense_34/BiasAdd/ReadVariableOp�dense_34/MatMul/ReadVariableOp�dense_35/BiasAdd/ReadVariableOp�dense_35/MatMul/ReadVariableOps
flatten_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
flatten_8/Const�
flatten_8/ReshapeReshapeinputsflatten_8/Const:output:0*
T0*(
_output_shapes
:����������2
flatten_8/Reshape�
dense_32/MatMul/ReadVariableOpReadVariableOp'dense_32_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_32/MatMul/ReadVariableOp�
dense_32/MatMulMatMulflatten_8/Reshape:output:0&dense_32/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_32/MatMul�
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_32/BiasAdd/ReadVariableOp�
dense_32/BiasAddBiasAdddense_32/MatMul:product:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_32/BiasAdd�
re_lu_24/LeakyRelu	LeakyReludense_32/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2
re_lu_24/LeakyRelu�
dense_33/MatMul/ReadVariableOpReadVariableOp'dense_33_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02 
dense_33/MatMul/ReadVariableOp�
dense_33/MatMulMatMul re_lu_24/LeakyRelu:activations:0&dense_33/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_33/MatMul�
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02!
dense_33/BiasAdd/ReadVariableOp�
dense_33/BiasAddBiasAdddense_33/MatMul:product:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
dense_33/BiasAdd�
re_lu_25/LeakyRelu	LeakyReludense_33/BiasAdd:output:0*(
_output_shapes
:����������*
alpha%
�#<2
re_lu_25/LeakyRelu�
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*
_output_shapes
:	� *
dtype02 
dense_34/MatMul/ReadVariableOp�
dense_34/MatMulMatMul re_lu_25/LeakyRelu:activations:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_34/MatMul�
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
dense_34/BiasAdd/ReadVariableOp�
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
dense_34/BiasAdd�
re_lu_26/LeakyRelu	LeakyReludense_34/BiasAdd:output:0*'
_output_shapes
:��������� *
alpha%
�#<2
re_lu_26/LeakyRelu�
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02 
dense_35/MatMul/ReadVariableOp�
dense_35/MatMulMatMul re_lu_26/LeakyRelu:activations:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_35/MatMul�
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02!
dense_35/BiasAdd/ReadVariableOp�
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
2
dense_35/BiasAdd|
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:���������
2
dense_35/Softmax�
IdentityIdentitydense_35/Softmax:softmax:0 ^dense_32/BiasAdd/ReadVariableOp^dense_32/MatMul/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp^dense_33/MatMul/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2@
dense_32/MatMul/ReadVariableOpdense_32/MatMul/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2@
dense_33/MatMul/ReadVariableOpdense_33/MatMul/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
a
E__inference_flatten_8_layer_call_and_return_conditional_losses_321049

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"����  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0**
_input_shapes
:���������:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�I
�
__inference__traced_save_321286
file_prefix.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_nadam_dense_32_kernel_m_read_readvariableop4
0savev2_nadam_dense_32_bias_m_read_readvariableop6
2savev2_nadam_dense_33_kernel_m_read_readvariableop4
0savev2_nadam_dense_33_bias_m_read_readvariableop6
2savev2_nadam_dense_34_kernel_m_read_readvariableop4
0savev2_nadam_dense_34_bias_m_read_readvariableop6
2savev2_nadam_dense_35_kernel_m_read_readvariableop4
0savev2_nadam_dense_35_bias_m_read_readvariableop6
2savev2_nadam_dense_32_kernel_v_read_readvariableop4
0savev2_nadam_dense_32_bias_v_read_readvariableop6
2savev2_nadam_dense_33_kernel_v_read_readvariableop4
0savev2_nadam_dense_33_bias_v_read_readvariableop6
2savev2_nadam_dense_34_kernel_v_read_readvariableop4
0savev2_nadam_dense_34_bias_v_read_readvariableop6
2savev2_nadam_dense_35_kernel_v_read_readvariableop4
0savev2_nadam_dense_35_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*�
value�B�#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_nadam_dense_32_kernel_m_read_readvariableop0savev2_nadam_dense_32_bias_m_read_readvariableop2savev2_nadam_dense_33_kernel_m_read_readvariableop0savev2_nadam_dense_33_bias_m_read_readvariableop2savev2_nadam_dense_34_kernel_m_read_readvariableop0savev2_nadam_dense_34_bias_m_read_readvariableop2savev2_nadam_dense_35_kernel_m_read_readvariableop0savev2_nadam_dense_35_bias_m_read_readvariableop2savev2_nadam_dense_32_kernel_v_read_readvariableop0savev2_nadam_dense_32_bias_v_read_readvariableop2savev2_nadam_dense_33_kernel_v_read_readvariableop0savev2_nadam_dense_33_bias_v_read_readvariableop2savev2_nadam_dense_34_kernel_v_read_readvariableop0savev2_nadam_dense_34_bias_v_read_readvariableop2savev2_nadam_dense_35_kernel_v_read_readvariableop0savev2_nadam_dense_35_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :
��:�:
��:�:	� : : 
:
: : : : : : : : : : :
��:�:
��:�:	� : : 
:
:
��:�:
��:�:	� : : 
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	� : 

_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:	

_output_shapes
: :


_output_shapes
: :
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
: :&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	� : 

_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:%!

_output_shapes
:	� :  

_output_shapes
: :$! 

_output_shapes

: 
: "

_output_shapes
:
:#

_output_shapes
: 
�	
�
D__inference_dense_34_layer_call_and_return_conditional_losses_321122

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_320834

inputs
dense_32_320810
dense_32_320812
dense_33_320816
dense_33_320818
dense_34_320822
dense_34_320824
dense_35_320828
dense_35_320830
identity�� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3206222
flatten_8/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_32_320810dense_32_320812*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_3206402"
 dense_32/StatefulPartitionedCall�
re_lu_24/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_24_layer_call_and_return_conditional_losses_3206612
re_lu_24/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall!re_lu_24/PartitionedCall:output:0dense_33_320816dense_33_320818*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_3206792"
 dense_33/StatefulPartitionedCall�
re_lu_25/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_3207002
re_lu_25/PartitionedCall�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0dense_34_320822dense_34_320824*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_3207182"
 dense_34/StatefulPartitionedCall�
re_lu_26/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_3207392
re_lu_26/PartitionedCall�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall!re_lu_26/PartitionedCall:output:0dense_35_320828dense_35_320830*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_3207582"
 dense_35/StatefulPartitionedCall�
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
`
D__inference_re_lu_24_layer_call_and_return_conditional_losses_321078

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_8_layer_call_fn_321043

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_3208832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�
E
)__inference_re_lu_25_layer_call_fn_321112

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_3207002
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_8_layer_call_fn_320902
flatten_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_3208832
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�
`
D__inference_re_lu_25_layer_call_and_return_conditional_losses_321107

inputs
identitye
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:����������*
alpha%
�#<2
	LeakyRelul
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*'
_input_shapes
:����������:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_8_layer_call_fn_320853
flatten_8_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallflatten_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_3208342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�	
�
D__inference_dense_34_layer_call_and_return_conditional_losses_320718

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	� *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� 2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:��������� 2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_33_layer_call_and_return_conditional_losses_321093

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_sequential_8_layer_call_fn_321022

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_3208342
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs
�"
�
H__inference_sequential_8_layer_call_and_return_conditional_losses_320803
flatten_8_input
dense_32_320779
dense_32_320781
dense_33_320785
dense_33_320787
dense_34_320791
dense_34_320793
dense_35_320797
dense_35_320799
identity�� dense_32/StatefulPartitionedCall� dense_33/StatefulPartitionedCall� dense_34/StatefulPartitionedCall� dense_35/StatefulPartitionedCall�
flatten_8/PartitionedCallPartitionedCallflatten_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_flatten_8_layer_call_and_return_conditional_losses_3206222
flatten_8/PartitionedCall�
 dense_32/StatefulPartitionedCallStatefulPartitionedCall"flatten_8/PartitionedCall:output:0dense_32_320779dense_32_320781*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_32_layer_call_and_return_conditional_losses_3206402"
 dense_32/StatefulPartitionedCall�
re_lu_24/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_24_layer_call_and_return_conditional_losses_3206612
re_lu_24/PartitionedCall�
 dense_33/StatefulPartitionedCallStatefulPartitionedCall!re_lu_24/PartitionedCall:output:0dense_33_320785dense_33_320787*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_3206792"
 dense_33/StatefulPartitionedCall�
re_lu_25/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_25_layer_call_and_return_conditional_losses_3207002
re_lu_25/PartitionedCall�
 dense_34/StatefulPartitionedCallStatefulPartitionedCall!re_lu_25/PartitionedCall:output:0dense_34_320791dense_34_320793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_34_layer_call_and_return_conditional_losses_3207182"
 dense_34/StatefulPartitionedCall�
re_lu_26/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:��������� * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_re_lu_26_layer_call_and_return_conditional_losses_3207392
re_lu_26/PartitionedCall�
 dense_35/StatefulPartitionedCallStatefulPartitionedCall!re_lu_26/PartitionedCall:output:0dense_35_320797dense_35_320799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_35_layer_call_and_return_conditional_losses_3207582"
 dense_35/StatefulPartitionedCall�
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall*
T0*'
_output_shapes
:���������
2

Identity"
identityIdentity:output:0*J
_input_shapes9
7:���������::::::::2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall:\ X
+
_output_shapes
:���������
)
_user_specified_nameflatten_8_input
�
~
)__inference_dense_33_layer_call_fn_321102

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_33_layer_call_and_return_conditional_losses_3206792
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
D__inference_dense_33_layer_call_and_return_conditional_losses_320679

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
��*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:����������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
O
flatten_8_input<
!serving_default_flatten_8_input:0���������<
dense_350
StatefulPartitionedCall:0���������
tensorflow/serving/predict:��
�5
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		optimizer

regularization_losses
trainable_variables
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�1
_tf_keras_sequential�1{"class_name": "Sequential", "name": "sequential_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_8_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_24", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_25", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_26", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_8", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "flatten_8_input"}}, {"class_name": "Flatten", "config": {"name": "flatten_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_24", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_25", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_26", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "sparse_categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004000000189989805, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
�
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Flatten", "name": "flatten_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_8", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28]}, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
�

kernel
bias
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_32", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_32", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
�
regularization_losses
trainable_variables
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ReLU", "name": "re_lu_24", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_24", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}
�

kernel
bias
regularization_losses
 trainable_variables
!	variables
"	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_33", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_33", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
�
#regularization_losses
$trainable_variables
%	variables
&	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ReLU", "name": "re_lu_25", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_25", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}
�

'kernel
(bias
)regularization_losses
*trainable_variables
+	variables
,	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_34", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_34", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
�
-regularization_losses
.trainable_variables
/	variables
0	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "ReLU", "name": "re_lu_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "re_lu_26", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.009999999776482582, "threshold": 0.0}}
�

1kernel
2bias
3regularization_losses
4trainable_variables
5	variables
6	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_35", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
�
7iter

8beta_1

9beta_2
	:decay
;learning_rate
<momentum_cachemumvmwmx'my(mz1m{2m|v}v~vv�'v�(v�1v�2v�"
	optimizer
 "
trackable_list_wrapper
X
0
1
2
3
'4
(5
16
27"
trackable_list_wrapper
X
0
1
2
3
'4
(5
16
27"
trackable_list_wrapper
�
=non_trainable_variables

regularization_losses
>layer_metrics

?layers
@layer_regularization_losses
Ametrics
trainable_variables
	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Bnon_trainable_variables
regularization_losses
Clayer_metrics
Dlayer_regularization_losses

Elayers
Fmetrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!
��2dense_32/kernel
:�2dense_32/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Gnon_trainable_variables
regularization_losses
Hlayer_metrics
Ilayer_regularization_losses

Jlayers
Kmetrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Lnon_trainable_variables
regularization_losses
Mlayer_metrics
Nlayer_regularization_losses

Olayers
Pmetrics
trainable_variables
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
#:!
��2dense_33/kernel
:�2dense_33/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
Qnon_trainable_variables
regularization_losses
Rlayer_metrics
Slayer_regularization_losses

Tlayers
Umetrics
 trainable_variables
!	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
Vnon_trainable_variables
#regularization_losses
Wlayer_metrics
Xlayer_regularization_losses

Ylayers
Zmetrics
$trainable_variables
%	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
": 	� 2dense_34/kernel
: 2dense_34/bias
 "
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
�
[non_trainable_variables
)regularization_losses
\layer_metrics
]layer_regularization_losses

^layers
_metrics
*trainable_variables
+	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
`non_trainable_variables
-regularization_losses
alayer_metrics
blayer_regularization_losses

clayers
dmetrics
.trainable_variables
/	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!: 
2dense_35/kernel
:
2dense_35/bias
 "
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
�
enon_trainable_variables
3regularization_losses
flayer_metrics
glayer_regularization_losses

hlayers
imetrics
4trainable_variables
5	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
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
�
	ltotal
	mcount
n	variables
o	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�
	ptotal
	qcount
r
_fn_kwargs
s	variables
t	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}}
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
n	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
p0
q1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
):'
��2Nadam/dense_32/kernel/m
": �2Nadam/dense_32/bias/m
):'
��2Nadam/dense_33/kernel/m
": �2Nadam/dense_33/bias/m
(:&	� 2Nadam/dense_34/kernel/m
!: 2Nadam/dense_34/bias/m
':% 
2Nadam/dense_35/kernel/m
!:
2Nadam/dense_35/bias/m
):'
��2Nadam/dense_32/kernel/v
": �2Nadam/dense_32/bias/v
):'
��2Nadam/dense_33/kernel/v
": �2Nadam/dense_33/bias/v
(:&	� 2Nadam/dense_34/kernel/v
!: 2Nadam/dense_34/bias/v
':% 
2Nadam/dense_35/kernel/v
!:
2Nadam/dense_35/bias/v
�2�
-__inference_sequential_8_layer_call_fn_321022
-__inference_sequential_8_layer_call_fn_320853
-__inference_sequential_8_layer_call_fn_321043
-__inference_sequential_8_layer_call_fn_320902�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_sequential_8_layer_call_and_return_conditional_losses_321001
H__inference_sequential_8_layer_call_and_return_conditional_losses_320967
H__inference_sequential_8_layer_call_and_return_conditional_losses_320803
H__inference_sequential_8_layer_call_and_return_conditional_losses_320775�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
!__inference__wrapped_model_320612�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *2�/
-�*
flatten_8_input���������
�2�
*__inference_flatten_8_layer_call_fn_321054�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
E__inference_flatten_8_layer_call_and_return_conditional_losses_321049�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_32_layer_call_fn_321073�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_32_layer_call_and_return_conditional_losses_321064�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_re_lu_24_layer_call_fn_321083�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_re_lu_24_layer_call_and_return_conditional_losses_321078�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_33_layer_call_fn_321102�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_33_layer_call_and_return_conditional_losses_321093�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_re_lu_25_layer_call_fn_321112�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_re_lu_25_layer_call_and_return_conditional_losses_321107�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_34_layer_call_fn_321131�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_34_layer_call_and_return_conditional_losses_321122�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_re_lu_26_layer_call_fn_321141�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_re_lu_26_layer_call_and_return_conditional_losses_321136�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dense_35_layer_call_fn_321161�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
D__inference_dense_35_layer_call_and_return_conditional_losses_321152�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
$__inference_signature_wrapper_320933flatten_8_input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_320612}'(12<�9
2�/
-�*
flatten_8_input���������
� "3�0
.
dense_35"�
dense_35���������
�
D__inference_dense_32_layer_call_and_return_conditional_losses_321064^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_32_layer_call_fn_321073Q0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_33_layer_call_and_return_conditional_losses_321093^0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� ~
)__inference_dense_33_layer_call_fn_321102Q0�-
&�#
!�
inputs����������
� "������������
D__inference_dense_34_layer_call_and_return_conditional_losses_321122]'(0�-
&�#
!�
inputs����������
� "%�"
�
0��������� 
� }
)__inference_dense_34_layer_call_fn_321131P'(0�-
&�#
!�
inputs����������
� "���������� �
D__inference_dense_35_layer_call_and_return_conditional_losses_321152\12/�,
%�"
 �
inputs��������� 
� "%�"
�
0���������

� |
)__inference_dense_35_layer_call_fn_321161O12/�,
%�"
 �
inputs��������� 
� "����������
�
E__inference_flatten_8_layer_call_and_return_conditional_losses_321049]3�0
)�&
$�!
inputs���������
� "&�#
�
0����������
� ~
*__inference_flatten_8_layer_call_fn_321054P3�0
)�&
$�!
inputs���������
� "������������
D__inference_re_lu_24_layer_call_and_return_conditional_losses_321078Z0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� z
)__inference_re_lu_24_layer_call_fn_321083M0�-
&�#
!�
inputs����������
� "������������
D__inference_re_lu_25_layer_call_and_return_conditional_losses_321107Z0�-
&�#
!�
inputs����������
� "&�#
�
0����������
� z
)__inference_re_lu_25_layer_call_fn_321112M0�-
&�#
!�
inputs����������
� "������������
D__inference_re_lu_26_layer_call_and_return_conditional_losses_321136X/�,
%�"
 �
inputs��������� 
� "%�"
�
0��������� 
� x
)__inference_re_lu_26_layer_call_fn_321141K/�,
%�"
 �
inputs��������� 
� "���������� �
H__inference_sequential_8_layer_call_and_return_conditional_losses_320775w'(12D�A
:�7
-�*
flatten_8_input���������
p

 
� "%�"
�
0���������

� �
H__inference_sequential_8_layer_call_and_return_conditional_losses_320803w'(12D�A
:�7
-�*
flatten_8_input���������
p 

 
� "%�"
�
0���������

� �
H__inference_sequential_8_layer_call_and_return_conditional_losses_320967n'(12;�8
1�.
$�!
inputs���������
p

 
� "%�"
�
0���������

� �
H__inference_sequential_8_layer_call_and_return_conditional_losses_321001n'(12;�8
1�.
$�!
inputs���������
p 

 
� "%�"
�
0���������

� �
-__inference_sequential_8_layer_call_fn_320853j'(12D�A
:�7
-�*
flatten_8_input���������
p

 
� "����������
�
-__inference_sequential_8_layer_call_fn_320902j'(12D�A
:�7
-�*
flatten_8_input���������
p 

 
� "����������
�
-__inference_sequential_8_layer_call_fn_321022a'(12;�8
1�.
$�!
inputs���������
p

 
� "����������
�
-__inference_sequential_8_layer_call_fn_321043a'(12;�8
1�.
$�!
inputs���������
p 

 
� "����������
�
$__inference_signature_wrapper_320933�'(12O�L
� 
E�B
@
flatten_8_input-�*
flatten_8_input���������"3�0
.
dense_35"�
dense_35���������
