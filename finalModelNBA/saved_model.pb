��	
��
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
:
Maximum
x"T
y"T
z"T"
Ttype:

2	
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
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.12v2.4.0-49-g85c8b2a817f8��
`
meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namemean
Y
mean/Read/ReadVariableOpReadVariableOpmean*
_output_shapes
:*
dtype0
h
varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
variance
a
variance/Read/ReadVariableOpReadVariableOpvariance*
_output_shapes
:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0	
|
dense_372/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_372/kernel
u
$dense_372/kernel/Read/ReadVariableOpReadVariableOpdense_372/kernel*
_output_shapes

:@*
dtype0
t
dense_372/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_372/bias
m
"dense_372/bias/Read/ReadVariableOpReadVariableOpdense_372/bias*
_output_shapes
:@*
dtype0
|
dense_373/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*!
shared_namedense_373/kernel
u
$dense_373/kernel/Read/ReadVariableOpReadVariableOpdense_373/kernel*
_output_shapes

:@@*
dtype0
t
dense_373/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_373/bias
m
"dense_373/bias/Read/ReadVariableOpReadVariableOpdense_373/bias*
_output_shapes
:@*
dtype0
|
dense_374/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*!
shared_namedense_374/kernel
u
$dense_374/kernel/Read/ReadVariableOpReadVariableOpdense_374/kernel*
_output_shapes

:@*
dtype0
t
dense_374/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_374/bias
m
"dense_374/bias/Read/ReadVariableOpReadVariableOpdense_374/bias*
_output_shapes
:*
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
Adam/dense_372/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_372/kernel/m
�
+Adam/dense_372/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_372/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_372/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_372/bias/m
{
)Adam/dense_372/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_372/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_373/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_373/kernel/m
�
+Adam/dense_373/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_373/kernel/m*
_output_shapes

:@@*
dtype0
�
Adam/dense_373/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_373/bias/m
{
)Adam/dense_373/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_373/bias/m*
_output_shapes
:@*
dtype0
�
Adam/dense_374/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_374/kernel/m
�
+Adam/dense_374/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_374/kernel/m*
_output_shapes

:@*
dtype0
�
Adam/dense_374/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_374/bias/m
{
)Adam/dense_374/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_374/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_372/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_372/kernel/v
�
+Adam/dense_372/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_372/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_372/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_372/bias/v
{
)Adam/dense_372/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_372/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_373/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*(
shared_nameAdam/dense_373/kernel/v
�
+Adam/dense_373/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_373/kernel/v*
_output_shapes

:@@*
dtype0
�
Adam/dense_373/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_373/bias/v
{
)Adam/dense_373/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_373/bias/v*
_output_shapes
:@*
dtype0
�
Adam/dense_374/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*(
shared_nameAdam/dense_374/kernel/v
�
+Adam/dense_374/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_374/kernel/v*
_output_shapes

:@*
dtype0
�
Adam/dense_374/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_374/bias/v
{
)Adam/dense_374/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_374/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�)
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�(
value�(B�( B�(
�
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
]
state_variables
_broadcast_shape
mean
variance
	count
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
h

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratemKmLmMmN"mO#mPvQvRvSvT"vU#vV
?
0
1
2
3
4
5
6
"7
#8
 
*
0
1
2
3
"4
#5
�
-layer_metrics
.non_trainable_variables
/metrics
	variables
0layer_regularization_losses
regularization_losses
	trainable_variables

1layers
 
#
mean
variance
	count
 
NL
VARIABLE_VALUEmean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEvariance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUEcount5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE
 
\Z
VARIABLE_VALUEdense_372/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_372/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
2layer_metrics
3non_trainable_variables
4metrics
	variables
5layer_regularization_losses
regularization_losses
trainable_variables

6layers
 
 
 
�
7layer_metrics
8non_trainable_variables
9metrics
	variables
:layer_regularization_losses
regularization_losses
trainable_variables

;layers
\Z
VARIABLE_VALUEdense_373/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_373/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
<layer_metrics
=non_trainable_variables
>metrics
	variables
?layer_regularization_losses
regularization_losses
 trainable_variables

@layers
\Z
VARIABLE_VALUEdense_374/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_374/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1
 

"0
#1
�
Alayer_metrics
Bnon_trainable_variables
Cmetrics
$	variables
Dlayer_regularization_losses
%regularization_losses
&trainable_variables

Elayers
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

0
1
2

F0
 
#
0
1
2
3
4
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
	Gtotal
	Hcount
I	variables
J	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

G0
H1

I	variables
}
VARIABLE_VALUEAdam/dense_372/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_372/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_373/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_373/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_374/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_374/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_372/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_372/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_373/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_373/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_374/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_374/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
%serving_default_normalization_3_inputPlaceholder*0
_output_shapes
:������������������*
dtype0*%
shape:������������������
�
StatefulPartitionedCallStatefulPartitionedCall%serving_default_normalization_3_inputmeanvariancedense_372/kerneldense_372/biasdense_373/kerneldense_373/biasdense_374/kerneldense_374/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *.
f)R'
%__inference_signature_wrapper_3851568
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamemean/Read/ReadVariableOpvariance/Read/ReadVariableOpcount/Read/ReadVariableOp$dense_372/kernel/Read/ReadVariableOp"dense_372/bias/Read/ReadVariableOp$dense_373/kernel/Read/ReadVariableOp"dense_373/bias/Read/ReadVariableOp$dense_374/kernel/Read/ReadVariableOp"dense_374/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_372/kernel/m/Read/ReadVariableOp)Adam/dense_372/bias/m/Read/ReadVariableOp+Adam/dense_373/kernel/m/Read/ReadVariableOp)Adam/dense_373/bias/m/Read/ReadVariableOp+Adam/dense_374/kernel/m/Read/ReadVariableOp)Adam/dense_374/bias/m/Read/ReadVariableOp+Adam/dense_372/kernel/v/Read/ReadVariableOp)Adam/dense_372/bias/v/Read/ReadVariableOp+Adam/dense_373/kernel/v/Read/ReadVariableOp)Adam/dense_373/bias/v/Read/ReadVariableOp+Adam/dense_374/kernel/v/Read/ReadVariableOp)Adam/dense_374/bias/v/Read/ReadVariableOpConst*)
Tin"
 2		*
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
GPU 2J 8� *)
f$R"
 __inference__traced_save_3851956
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemeanvariancecountdense_372/kerneldense_372/biasdense_373/kerneldense_373/biasdense_374/kerneldense_374/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcount_1Adam/dense_372/kernel/mAdam/dense_372/bias/mAdam/dense_373/kernel/mAdam/dense_373/bias/mAdam/dense_374/kernel/mAdam/dense_374/bias/mAdam/dense_372/kernel/vAdam/dense_372/bias/vAdam/dense_373/kernel/vAdam/dense_373/bias/vAdam/dense_374/kernel/vAdam/dense_374/bias/v*(
Tin!
2*
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
GPU 2J 8� *,
f'R%
#__inference__traced_restore_3852050��
�
�
/__inference_sequential_64_layer_call_fn_3851717

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
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_64_layer_call_and_return_conditional_losses_38515062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_3851849?
;dense_373_kernel_regularizer_square_readvariableop_resource
identity��2dense_373/kernel/Regularizer/Square/ReadVariableOp�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_373_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentity$dense_373/kernel/Regularizer/mul:z:03^dense_373/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp
�N
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851625

inputs3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource,
(dense_372_matmul_readvariableop_resource-
)dense_372_biasadd_readvariableop_resource,
(dense_373_matmul_readvariableop_resource-
)dense_373_biasadd_readvariableop_resource,
(dense_374_matmul_readvariableop_resource-
)dense_374_biasadd_readvariableop_resource
identity�� dense_372/BiasAdd/ReadVariableOp�dense_372/MatMul/ReadVariableOp�2dense_372/kernel/Regularizer/Square/ReadVariableOp� dense_373/BiasAdd/ReadVariableOp�dense_373/MatMul/ReadVariableOp�2dense_373/kernel/Regularizer/Square/ReadVariableOp� dense_374/BiasAdd/ReadVariableOp�dense_374/MatMul/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
dense_372/MatMul/ReadVariableOpReadVariableOp(dense_372_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_372/MatMul/ReadVariableOp�
dense_372/MatMulMatMulnormalization_3/truediv:z:0'dense_372/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_372/MatMul�
 dense_372/BiasAdd/ReadVariableOpReadVariableOp)dense_372_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_372/BiasAdd/ReadVariableOp�
dense_372/BiasAddBiasAdddense_372/MatMul:product:0(dense_372/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_372/BiasAddv
dense_372/ReluReludense_372/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_372/Relu{
dropout_244/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_244/dropout/Const�
dropout_244/dropout/MulMuldense_372/Relu:activations:0"dropout_244/dropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout_244/dropout/Mul�
dropout_244/dropout/ShapeShapedense_372/Relu:activations:0*
T0*
_output_shapes
:2
dropout_244/dropout/Shape�
0dropout_244/dropout/random_uniform/RandomUniformRandomUniform"dropout_244/dropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype022
0dropout_244/dropout/random_uniform/RandomUniform�
"dropout_244/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_244/dropout/GreaterEqual/y�
 dropout_244/dropout/GreaterEqualGreaterEqual9dropout_244/dropout/random_uniform/RandomUniform:output:0+dropout_244/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2"
 dropout_244/dropout/GreaterEqual�
dropout_244/dropout/CastCast$dropout_244/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout_244/dropout/Cast�
dropout_244/dropout/Mul_1Muldropout_244/dropout/Mul:z:0dropout_244/dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout_244/dropout/Mul_1�
dense_373/MatMul/ReadVariableOpReadVariableOp(dense_373_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_373/MatMul/ReadVariableOp�
dense_373/MatMulMatMuldropout_244/dropout/Mul_1:z:0'dense_373/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_373/MatMul�
 dense_373/BiasAdd/ReadVariableOpReadVariableOp)dense_373_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_373/BiasAdd/ReadVariableOp�
dense_373/BiasAddBiasAdddense_373/MatMul:product:0(dense_373/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_373/BiasAddv
dense_373/ReluReludense_373/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_373/Relu�
dense_374/MatMul/ReadVariableOpReadVariableOp(dense_374_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_374/MatMul/ReadVariableOp�
dense_374/MatMulMatMuldense_373/Relu:activations:0'dense_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_374/MatMul�
 dense_374/BiasAdd/ReadVariableOpReadVariableOp)dense_374_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_374/BiasAdd/ReadVariableOp�
dense_374/BiasAddBiasAdddense_374/MatMul:product:0(dense_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_374/BiasAdd�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_372_matmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_373_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentitydense_374/BiasAdd:output:0!^dense_372/BiasAdd/ReadVariableOp ^dense_372/MatMul/ReadVariableOp3^dense_372/kernel/Regularizer/Square/ReadVariableOp!^dense_373/BiasAdd/ReadVariableOp ^dense_373/MatMul/ReadVariableOp3^dense_373/kernel/Regularizer/Square/ReadVariableOp!^dense_374/BiasAdd/ReadVariableOp ^dense_374/MatMul/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2D
 dense_372/BiasAdd/ReadVariableOp dense_372/BiasAdd/ReadVariableOp2B
dense_372/MatMul/ReadVariableOpdense_372/MatMul/ReadVariableOp2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2D
 dense_373/BiasAdd/ReadVariableOp dense_373/BiasAdd/ReadVariableOp2B
dense_373/MatMul/ReadVariableOpdense_373/MatMul/ReadVariableOp2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2D
 dense_374/BiasAdd/ReadVariableOp dense_374/BiasAdd/ReadVariableOp2B
dense_374/MatMul/ReadVariableOpdense_374/MatMul/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
F__inference_dense_372_layer_call_and_return_conditional_losses_3851740

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_372/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_372/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�E
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851675

inputs3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource,
(dense_372_matmul_readvariableop_resource-
)dense_372_biasadd_readvariableop_resource,
(dense_373_matmul_readvariableop_resource-
)dense_373_biasadd_readvariableop_resource,
(dense_374_matmul_readvariableop_resource-
)dense_374_biasadd_readvariableop_resource
identity�� dense_372/BiasAdd/ReadVariableOp�dense_372/MatMul/ReadVariableOp�2dense_372/kernel/Regularizer/Square/ReadVariableOp� dense_373/BiasAdd/ReadVariableOp�dense_373/MatMul/ReadVariableOp�2dense_373/kernel/Regularizer/Square/ReadVariableOp� dense_374/BiasAdd/ReadVariableOp�dense_374/MatMul/ReadVariableOp�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
dense_372/MatMul/ReadVariableOpReadVariableOp(dense_372_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_372/MatMul/ReadVariableOp�
dense_372/MatMulMatMulnormalization_3/truediv:z:0'dense_372/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_372/MatMul�
 dense_372/BiasAdd/ReadVariableOpReadVariableOp)dense_372_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_372/BiasAdd/ReadVariableOp�
dense_372/BiasAddBiasAdddense_372/MatMul:product:0(dense_372/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_372/BiasAddv
dense_372/ReluReludense_372/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_372/Relu�
dropout_244/IdentityIdentitydense_372/Relu:activations:0*
T0*'
_output_shapes
:���������@2
dropout_244/Identity�
dense_373/MatMul/ReadVariableOpReadVariableOp(dense_373_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02!
dense_373/MatMul/ReadVariableOp�
dense_373/MatMulMatMuldropout_244/Identity:output:0'dense_373/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_373/MatMul�
 dense_373/BiasAdd/ReadVariableOpReadVariableOp)dense_373_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_373/BiasAdd/ReadVariableOp�
dense_373/BiasAddBiasAdddense_373/MatMul:product:0(dense_373/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
dense_373/BiasAddv
dense_373/ReluReludense_373/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
dense_373/Relu�
dense_374/MatMul/ReadVariableOpReadVariableOp(dense_374_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02!
dense_374/MatMul/ReadVariableOp�
dense_374/MatMulMatMuldense_373/Relu:activations:0'dense_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_374/MatMul�
 dense_374/BiasAdd/ReadVariableOpReadVariableOp)dense_374_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02"
 dense_374/BiasAdd/ReadVariableOp�
dense_374/BiasAddBiasAdddense_374/MatMul:product:0(dense_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_374/BiasAdd�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_372_matmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_373_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentitydense_374/BiasAdd:output:0!^dense_372/BiasAdd/ReadVariableOp ^dense_372/MatMul/ReadVariableOp3^dense_372/kernel/Regularizer/Square/ReadVariableOp!^dense_373/BiasAdd/ReadVariableOp ^dense_373/MatMul/ReadVariableOp3^dense_373/kernel/Regularizer/Square/ReadVariableOp!^dense_374/BiasAdd/ReadVariableOp ^dense_374/MatMul/ReadVariableOp'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2D
 dense_372/BiasAdd/ReadVariableOp dense_372/BiasAdd/ReadVariableOp2B
dense_372/MatMul/ReadVariableOpdense_372/MatMul/ReadVariableOp2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2D
 dense_373/BiasAdd/ReadVariableOp dense_373/BiasAdd/ReadVariableOp2B
dense_373/MatMul/ReadVariableOpdense_373/MatMul/ReadVariableOp2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2D
 dense_374/BiasAdd/ReadVariableOp dense_374/BiasAdd/ReadVariableOp2B
dense_374/MatMul/ReadVariableOpdense_374/MatMul/ReadVariableOp2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
f
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851766

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
/__inference_sequential_64_layer_call_fn_3851696

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
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_64_layer_call_and_return_conditional_losses_38514402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�	
�
F__inference_dense_374_layer_call_and_return_conditional_losses_3851818

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_dense_373_layer_call_and_return_conditional_losses_3851292

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_373/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_373/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_dense_373_layer_call_fn_3851808

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
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_373_layer_call_and_return_conditional_losses_38512922
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
F__inference_dense_372_layer_call_and_return_conditional_losses_3851229

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_372/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_372/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
I
-__inference_dropout_244_layer_call_fn_3851776

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
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512622
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
f
-__inference_dropout_244_layer_call_fn_3851771

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512572
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_dense_372_layer_call_fn_3851749

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
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_372_layer_call_and_return_conditional_losses_38512292
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
F__inference_dense_373_layer_call_and_return_conditional_losses_3851799

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_373/kernel/Regularizer/Square/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:���������@2
Relu�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_373/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�;
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851392
normalization_3_input3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource
dense_372_3851363
dense_372_3851365
dense_373_3851369
dense_373_3851371
dense_374_3851374
dense_374_3851376
identity��!dense_372/StatefulPartitionedCall�2dense_372/kernel/Regularizer/Square/ReadVariableOp�!dense_373/StatefulPartitionedCall�2dense_373/kernel/Regularizer/Square/ReadVariableOp�!dense_374/StatefulPartitionedCall�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubnormalization_3_input normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
!dense_372/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0dense_372_3851363dense_372_3851365*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_372_layer_call_and_return_conditional_losses_38512292#
!dense_372/StatefulPartitionedCall�
dropout_244/PartitionedCallPartitionedCall*dense_372/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512622
dropout_244/PartitionedCall�
!dense_373/StatefulPartitionedCallStatefulPartitionedCall$dropout_244/PartitionedCall:output:0dense_373_3851369dense_373_3851371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_373_layer_call_and_return_conditional_losses_38512922#
!dense_373/StatefulPartitionedCall�
!dense_374/StatefulPartitionedCallStatefulPartitionedCall*dense_373/StatefulPartitionedCall:output:0dense_374_3851374dense_374_3851376*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_374_layer_call_and_return_conditional_losses_38513182#
!dense_374/StatefulPartitionedCall�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_372_3851363*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_373_3851369*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentity*dense_374/StatefulPartitionedCall:output:0"^dense_372/StatefulPartitionedCall3^dense_372/kernel/Regularizer/Square/ReadVariableOp"^dense_373/StatefulPartitionedCall3^dense_373/kernel/Regularizer/Square/ReadVariableOp"^dense_374/StatefulPartitionedCall'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2F
!dense_372/StatefulPartitionedCall!dense_372/StatefulPartitionedCall2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2F
!dense_373/StatefulPartitionedCall!dense_373/StatefulPartitionedCall2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2F
!dense_374/StatefulPartitionedCall!dense_374/StatefulPartitionedCall2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�>
�
 __inference__traced_save_3851956
file_prefix#
savev2_mean_read_readvariableop'
#savev2_variance_read_readvariableop$
 savev2_count_read_readvariableop	/
+savev2_dense_372_kernel_read_readvariableop-
)savev2_dense_372_bias_read_readvariableop/
+savev2_dense_373_kernel_read_readvariableop-
)savev2_dense_373_bias_read_readvariableop/
+savev2_dense_374_kernel_read_readvariableop-
)savev2_dense_374_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_372_kernel_m_read_readvariableop4
0savev2_adam_dense_372_bias_m_read_readvariableop6
2savev2_adam_dense_373_kernel_m_read_readvariableop4
0savev2_adam_dense_373_bias_m_read_readvariableop6
2savev2_adam_dense_374_kernel_m_read_readvariableop4
0savev2_adam_dense_374_bias_m_read_readvariableop6
2savev2_adam_dense_372_kernel_v_read_readvariableop4
0savev2_adam_dense_372_bias_v_read_readvariableop6
2savev2_adam_dense_373_kernel_v_read_readvariableop4
0savev2_adam_dense_373_bias_v_read_readvariableop6
2savev2_adam_dense_374_kernel_v_read_readvariableop4
0savev2_adam_dense_374_bias_v_read_readvariableop
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
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0savev2_mean_read_readvariableop#savev2_variance_read_readvariableop savev2_count_read_readvariableop+savev2_dense_372_kernel_read_readvariableop)savev2_dense_372_bias_read_readvariableop+savev2_dense_373_kernel_read_readvariableop)savev2_dense_373_bias_read_readvariableop+savev2_dense_374_kernel_read_readvariableop)savev2_dense_374_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_372_kernel_m_read_readvariableop0savev2_adam_dense_372_bias_m_read_readvariableop2savev2_adam_dense_373_kernel_m_read_readvariableop0savev2_adam_dense_373_bias_m_read_readvariableop2savev2_adam_dense_374_kernel_m_read_readvariableop0savev2_adam_dense_374_bias_m_read_readvariableop2savev2_adam_dense_372_kernel_v_read_readvariableop0savev2_adam_dense_372_bias_v_read_readvariableop2savev2_adam_dense_373_kernel_v_read_readvariableop0savev2_adam_dense_373_bias_v_read_readvariableop2savev2_adam_dense_374_kernel_v_read_readvariableop0savev2_adam_dense_374_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2		2
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

identity_1Identity_1:output:0*�
_input_shapes�
�: ::: :@:@:@@:@:@:: : : : : : : :@:@:@@:@:@::@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 	

_output_shapes
::
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
: :$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: 
�;
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851506

inputs3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource
dense_372_3851477
dense_372_3851479
dense_373_3851483
dense_373_3851485
dense_374_3851488
dense_374_3851490
identity��!dense_372/StatefulPartitionedCall�2dense_372/kernel/Regularizer/Square/ReadVariableOp�!dense_373/StatefulPartitionedCall�2dense_373/kernel/Regularizer/Square/ReadVariableOp�!dense_374/StatefulPartitionedCall�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
!dense_372/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0dense_372_3851477dense_372_3851479*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_372_layer_call_and_return_conditional_losses_38512292#
!dense_372/StatefulPartitionedCall�
dropout_244/PartitionedCallPartitionedCall*dense_372/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512622
dropout_244/PartitionedCall�
!dense_373/StatefulPartitionedCallStatefulPartitionedCall$dropout_244/PartitionedCall:output:0dense_373_3851483dense_373_3851485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_373_layer_call_and_return_conditional_losses_38512922#
!dense_373/StatefulPartitionedCall�
!dense_374/StatefulPartitionedCallStatefulPartitionedCall*dense_373/StatefulPartitionedCall:output:0dense_374_3851488dense_374_3851490*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_374_layer_call_and_return_conditional_losses_38513182#
!dense_374/StatefulPartitionedCall�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_372_3851477*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_373_3851483*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentity*dense_374/StatefulPartitionedCall:output:0"^dense_372/StatefulPartitionedCall3^dense_372/kernel/Regularizer/Square/ReadVariableOp"^dense_373/StatefulPartitionedCall3^dense_373/kernel/Regularizer/Square/ReadVariableOp"^dense_374/StatefulPartitionedCall'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2F
!dense_372/StatefulPartitionedCall!dense_372/StatefulPartitionedCall2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2F
!dense_373/StatefulPartitionedCall!dense_373/StatefulPartitionedCall2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2F
!dense_374/StatefulPartitionedCall!dense_374/StatefulPartitionedCall2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�	
�
F__inference_dense_374_layer_call_and_return_conditional_losses_3851318

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdd�
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
g
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851257

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
+__inference_dense_374_layer_call_fn_3851827

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
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_374_layer_call_and_return_conditional_losses_38513182
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*.
_input_shapes
:���������@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�<
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851440

inputs3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource
dense_372_3851411
dense_372_3851413
dense_373_3851417
dense_373_3851419
dense_374_3851422
dense_374_3851424
identity��!dense_372/StatefulPartitionedCall�2dense_372/kernel/Regularizer/Square/ReadVariableOp�!dense_373/StatefulPartitionedCall�2dense_373/kernel/Regularizer/Square/ReadVariableOp�!dense_374/StatefulPartitionedCall�#dropout_244/StatefulPartitionedCall�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubinputs normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
!dense_372/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0dense_372_3851411dense_372_3851413*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_372_layer_call_and_return_conditional_losses_38512292#
!dense_372/StatefulPartitionedCall�
#dropout_244/StatefulPartitionedCallStatefulPartitionedCall*dense_372/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512572%
#dropout_244/StatefulPartitionedCall�
!dense_373/StatefulPartitionedCallStatefulPartitionedCall,dropout_244/StatefulPartitionedCall:output:0dense_373_3851417dense_373_3851419*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_373_layer_call_and_return_conditional_losses_38512922#
!dense_373/StatefulPartitionedCall�
!dense_374/StatefulPartitionedCallStatefulPartitionedCall*dense_373/StatefulPartitionedCall:output:0dense_374_3851422dense_374_3851424*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_374_layer_call_and_return_conditional_losses_38513182#
!dense_374/StatefulPartitionedCall�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_372_3851411*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_373_3851417*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentity*dense_374/StatefulPartitionedCall:output:0"^dense_372/StatefulPartitionedCall3^dense_372/kernel/Regularizer/Square/ReadVariableOp"^dense_373/StatefulPartitionedCall3^dense_373/kernel/Regularizer/Square/ReadVariableOp"^dense_374/StatefulPartitionedCall$^dropout_244/StatefulPartitionedCall'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2F
!dense_372/StatefulPartitionedCall!dense_372/StatefulPartitionedCall2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2F
!dense_373/StatefulPartitionedCall!dense_373/StatefulPartitionedCall2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2F
!dense_374/StatefulPartitionedCall!dense_374/StatefulPartitionedCall2J
#dropout_244/StatefulPartitionedCall#dropout_244/StatefulPartitionedCall2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:X T
0
_output_shapes
:������������������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_3851568
normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallnormalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__wrapped_model_38511952
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�
f
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851262

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:���������@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:���������@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�
�
/__inference_sequential_64_layer_call_fn_3851459
normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallnormalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_64_layer_call_and_return_conditional_losses_38514402
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�>
�
"__inference__wrapped_model_3851195
normalization_3_inputA
=sequential_64_normalization_3_reshape_readvariableop_resourceC
?sequential_64_normalization_3_reshape_1_readvariableop_resource:
6sequential_64_dense_372_matmul_readvariableop_resource;
7sequential_64_dense_372_biasadd_readvariableop_resource:
6sequential_64_dense_373_matmul_readvariableop_resource;
7sequential_64_dense_373_biasadd_readvariableop_resource:
6sequential_64_dense_374_matmul_readvariableop_resource;
7sequential_64_dense_374_biasadd_readvariableop_resource
identity��.sequential_64/dense_372/BiasAdd/ReadVariableOp�-sequential_64/dense_372/MatMul/ReadVariableOp�.sequential_64/dense_373/BiasAdd/ReadVariableOp�-sequential_64/dense_373/MatMul/ReadVariableOp�.sequential_64/dense_374/BiasAdd/ReadVariableOp�-sequential_64/dense_374/MatMul/ReadVariableOp�4sequential_64/normalization_3/Reshape/ReadVariableOp�6sequential_64/normalization_3/Reshape_1/ReadVariableOp�
4sequential_64/normalization_3/Reshape/ReadVariableOpReadVariableOp=sequential_64_normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype026
4sequential_64/normalization_3/Reshape/ReadVariableOp�
+sequential_64/normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2-
+sequential_64/normalization_3/Reshape/shape�
%sequential_64/normalization_3/ReshapeReshape<sequential_64/normalization_3/Reshape/ReadVariableOp:value:04sequential_64/normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2'
%sequential_64/normalization_3/Reshape�
6sequential_64/normalization_3/Reshape_1/ReadVariableOpReadVariableOp?sequential_64_normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype028
6sequential_64/normalization_3/Reshape_1/ReadVariableOp�
-sequential_64/normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2/
-sequential_64/normalization_3/Reshape_1/shape�
'sequential_64/normalization_3/Reshape_1Reshape>sequential_64/normalization_3/Reshape_1/ReadVariableOp:value:06sequential_64/normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2)
'sequential_64/normalization_3/Reshape_1�
!sequential_64/normalization_3/subSubnormalization_3_input.sequential_64/normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2#
!sequential_64/normalization_3/sub�
"sequential_64/normalization_3/SqrtSqrt0sequential_64/normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2$
"sequential_64/normalization_3/Sqrt�
'sequential_64/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32)
'sequential_64/normalization_3/Maximum/y�
%sequential_64/normalization_3/MaximumMaximum&sequential_64/normalization_3/Sqrt:y:00sequential_64/normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2'
%sequential_64/normalization_3/Maximum�
%sequential_64/normalization_3/truedivRealDiv%sequential_64/normalization_3/sub:z:0)sequential_64/normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2'
%sequential_64/normalization_3/truediv�
-sequential_64/dense_372/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_372_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02/
-sequential_64/dense_372/MatMul/ReadVariableOp�
sequential_64/dense_372/MatMulMatMul)sequential_64/normalization_3/truediv:z:05sequential_64/dense_372/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
sequential_64/dense_372/MatMul�
.sequential_64/dense_372/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_372_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_64/dense_372/BiasAdd/ReadVariableOp�
sequential_64/dense_372/BiasAddBiasAdd(sequential_64/dense_372/MatMul:product:06sequential_64/dense_372/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
sequential_64/dense_372/BiasAdd�
sequential_64/dense_372/ReluRelu(sequential_64/dense_372/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
sequential_64/dense_372/Relu�
"sequential_64/dropout_244/IdentityIdentity*sequential_64/dense_372/Relu:activations:0*
T0*'
_output_shapes
:���������@2$
"sequential_64/dropout_244/Identity�
-sequential_64/dense_373/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_373_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02/
-sequential_64/dense_373/MatMul/ReadVariableOp�
sequential_64/dense_373/MatMulMatMul+sequential_64/dropout_244/Identity:output:05sequential_64/dense_373/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2 
sequential_64/dense_373/MatMul�
.sequential_64/dense_373/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_373_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_64/dense_373/BiasAdd/ReadVariableOp�
sequential_64/dense_373/BiasAddBiasAdd(sequential_64/dense_373/MatMul:product:06sequential_64/dense_373/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@2!
sequential_64/dense_373/BiasAdd�
sequential_64/dense_373/ReluRelu(sequential_64/dense_373/BiasAdd:output:0*
T0*'
_output_shapes
:���������@2
sequential_64/dense_373/Relu�
-sequential_64/dense_374/MatMul/ReadVariableOpReadVariableOp6sequential_64_dense_374_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02/
-sequential_64/dense_374/MatMul/ReadVariableOp�
sequential_64/dense_374/MatMulMatMul*sequential_64/dense_373/Relu:activations:05sequential_64/dense_374/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2 
sequential_64/dense_374/MatMul�
.sequential_64/dense_374/BiasAdd/ReadVariableOpReadVariableOp7sequential_64_dense_374_biasadd_readvariableop_resource*
_output_shapes
:*
dtype020
.sequential_64/dense_374/BiasAdd/ReadVariableOp�
sequential_64/dense_374/BiasAddBiasAdd(sequential_64/dense_374/MatMul:product:06sequential_64/dense_374/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2!
sequential_64/dense_374/BiasAdd�
IdentityIdentity(sequential_64/dense_374/BiasAdd:output:0/^sequential_64/dense_372/BiasAdd/ReadVariableOp.^sequential_64/dense_372/MatMul/ReadVariableOp/^sequential_64/dense_373/BiasAdd/ReadVariableOp.^sequential_64/dense_373/MatMul/ReadVariableOp/^sequential_64/dense_374/BiasAdd/ReadVariableOp.^sequential_64/dense_374/MatMul/ReadVariableOp5^sequential_64/normalization_3/Reshape/ReadVariableOp7^sequential_64/normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2`
.sequential_64/dense_372/BiasAdd/ReadVariableOp.sequential_64/dense_372/BiasAdd/ReadVariableOp2^
-sequential_64/dense_372/MatMul/ReadVariableOp-sequential_64/dense_372/MatMul/ReadVariableOp2`
.sequential_64/dense_373/BiasAdd/ReadVariableOp.sequential_64/dense_373/BiasAdd/ReadVariableOp2^
-sequential_64/dense_373/MatMul/ReadVariableOp-sequential_64/dense_373/MatMul/ReadVariableOp2`
.sequential_64/dense_374/BiasAdd/ReadVariableOp.sequential_64/dense_374/BiasAdd/ReadVariableOp2^
-sequential_64/dense_374/MatMul/ReadVariableOp-sequential_64/dense_374/MatMul/ReadVariableOp2l
4sequential_64/normalization_3/Reshape/ReadVariableOp4sequential_64/normalization_3/Reshape/ReadVariableOp2p
6sequential_64/normalization_3/Reshape_1/ReadVariableOp6sequential_64/normalization_3/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�
�
/__inference_sequential_64_layer_call_fn_3851525
normalization_3_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallnormalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_sequential_64_layer_call_and_return_conditional_losses_38515062
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::22
StatefulPartitionedCallStatefulPartitionedCall:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�
�
__inference_loss_fn_0_3851838?
;dense_372_kernel_regularizer_square_readvariableop_resource
identity��2dense_372/kernel/Regularizer/Square/ReadVariableOp�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_372_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
IdentityIdentity$dense_372/kernel/Regularizer/mul:z:03^dense_372/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp
�<
�
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851347
normalization_3_input3
/normalization_3_reshape_readvariableop_resource5
1normalization_3_reshape_1_readvariableop_resource
dense_372_3851240
dense_372_3851242
dense_373_3851303
dense_373_3851305
dense_374_3851329
dense_374_3851331
identity��!dense_372/StatefulPartitionedCall�2dense_372/kernel/Regularizer/Square/ReadVariableOp�!dense_373/StatefulPartitionedCall�2dense_373/kernel/Regularizer/Square/ReadVariableOp�!dense_374/StatefulPartitionedCall�#dropout_244/StatefulPartitionedCall�&normalization_3/Reshape/ReadVariableOp�(normalization_3/Reshape_1/ReadVariableOp�
&normalization_3/Reshape/ReadVariableOpReadVariableOp/normalization_3_reshape_readvariableop_resource*
_output_shapes
:*
dtype02(
&normalization_3/Reshape/ReadVariableOp�
normalization_3/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2
normalization_3/Reshape/shape�
normalization_3/ReshapeReshape.normalization_3/Reshape/ReadVariableOp:value:0&normalization_3/Reshape/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape�
(normalization_3/Reshape_1/ReadVariableOpReadVariableOp1normalization_3_reshape_1_readvariableop_resource*
_output_shapes
:*
dtype02*
(normalization_3/Reshape_1/ReadVariableOp�
normalization_3/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"      2!
normalization_3/Reshape_1/shape�
normalization_3/Reshape_1Reshape0normalization_3/Reshape_1/ReadVariableOp:value:0(normalization_3/Reshape_1/shape:output:0*
T0*
_output_shapes

:2
normalization_3/Reshape_1�
normalization_3/subSubnormalization_3_input normalization_3/Reshape:output:0*
T0*'
_output_shapes
:���������2
normalization_3/sub�
normalization_3/SqrtSqrt"normalization_3/Reshape_1:output:0*
T0*
_output_shapes

:2
normalization_3/Sqrt{
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *���32
normalization_3/Maximum/y�
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*
_output_shapes

:2
normalization_3/Maximum�
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*'
_output_shapes
:���������2
normalization_3/truediv�
!dense_372/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0dense_372_3851240dense_372_3851242*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_372_layer_call_and_return_conditional_losses_38512292#
!dense_372/StatefulPartitionedCall�
#dropout_244/StatefulPartitionedCallStatefulPartitionedCall*dense_372/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Q
fLRJ
H__inference_dropout_244_layer_call_and_return_conditional_losses_38512572%
#dropout_244/StatefulPartitionedCall�
!dense_373/StatefulPartitionedCallStatefulPartitionedCall,dropout_244/StatefulPartitionedCall:output:0dense_373_3851303dense_373_3851305*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_373_layer_call_and_return_conditional_losses_38512922#
!dense_373/StatefulPartitionedCall�
!dense_374/StatefulPartitionedCallStatefulPartitionedCall*dense_373/StatefulPartitionedCall:output:0dense_374_3851329dense_374_3851331*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *O
fJRH
F__inference_dense_374_layer_call_and_return_conditional_losses_38513182#
!dense_374/StatefulPartitionedCall�
2dense_372/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_372_3851240*
_output_shapes

:@*
dtype024
2dense_372/kernel/Regularizer/Square/ReadVariableOp�
#dense_372/kernel/Regularizer/SquareSquare:dense_372/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@2%
#dense_372/kernel/Regularizer/Square�
"dense_372/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_372/kernel/Regularizer/Const�
 dense_372/kernel/Regularizer/SumSum'dense_372/kernel/Regularizer/Square:y:0+dense_372/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/Sum�
"dense_372/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_372/kernel/Regularizer/mul/x�
 dense_372/kernel/Regularizer/mulMul+dense_372/kernel/Regularizer/mul/x:output:0)dense_372/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_372/kernel/Regularizer/mul�
2dense_373/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_373_3851303*
_output_shapes

:@@*
dtype024
2dense_373/kernel/Regularizer/Square/ReadVariableOp�
#dense_373/kernel/Regularizer/SquareSquare:dense_373/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:@@2%
#dense_373/kernel/Regularizer/Square�
"dense_373/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2$
"dense_373/kernel/Regularizer/Const�
 dense_373/kernel/Regularizer/SumSum'dense_373/kernel/Regularizer/Square:y:0+dense_373/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/Sum�
"dense_373/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *o�:2$
"dense_373/kernel/Regularizer/mul/x�
 dense_373/kernel/Regularizer/mulMul+dense_373/kernel/Regularizer/mul/x:output:0)dense_373/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2"
 dense_373/kernel/Regularizer/mul�
IdentityIdentity*dense_374/StatefulPartitionedCall:output:0"^dense_372/StatefulPartitionedCall3^dense_372/kernel/Regularizer/Square/ReadVariableOp"^dense_373/StatefulPartitionedCall3^dense_373/kernel/Regularizer/Square/ReadVariableOp"^dense_374/StatefulPartitionedCall$^dropout_244/StatefulPartitionedCall'^normalization_3/Reshape/ReadVariableOp)^normalization_3/Reshape_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*O
_input_shapes>
<:������������������::::::::2F
!dense_372/StatefulPartitionedCall!dense_372/StatefulPartitionedCall2h
2dense_372/kernel/Regularizer/Square/ReadVariableOp2dense_372/kernel/Regularizer/Square/ReadVariableOp2F
!dense_373/StatefulPartitionedCall!dense_373/StatefulPartitionedCall2h
2dense_373/kernel/Regularizer/Square/ReadVariableOp2dense_373/kernel/Regularizer/Square/ReadVariableOp2F
!dense_374/StatefulPartitionedCall!dense_374/StatefulPartitionedCall2J
#dropout_244/StatefulPartitionedCall#dropout_244/StatefulPartitionedCall2P
&normalization_3/Reshape/ReadVariableOp&normalization_3/Reshape/ReadVariableOp2T
(normalization_3/Reshape_1/ReadVariableOp(normalization_3/Reshape_1/ReadVariableOp:g c
0
_output_shapes
:������������������
/
_user_specified_namenormalization_3_input
�
g
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851761

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:���������@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:���������@2

Identity"
identityIdentity:output:0*&
_input_shapes
:���������@:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs
�w
�
#__inference__traced_restore_3852050
file_prefix
assignvariableop_mean
assignvariableop_1_variance
assignvariableop_2_count'
#assignvariableop_3_dense_372_kernel%
!assignvariableop_4_dense_372_bias'
#assignvariableop_5_dense_373_kernel%
!assignvariableop_6_dense_373_bias'
#assignvariableop_7_dense_374_kernel%
!assignvariableop_8_dense_374_bias 
assignvariableop_9_adam_iter#
assignvariableop_10_adam_beta_1#
assignvariableop_11_adam_beta_2"
assignvariableop_12_adam_decay*
&assignvariableop_13_adam_learning_rate
assignvariableop_14_total
assignvariableop_15_count_1/
+assignvariableop_16_adam_dense_372_kernel_m-
)assignvariableop_17_adam_dense_372_bias_m/
+assignvariableop_18_adam_dense_373_kernel_m-
)assignvariableop_19_adam_dense_373_bias_m/
+assignvariableop_20_adam_dense_374_kernel_m-
)assignvariableop_21_adam_dense_374_bias_m/
+assignvariableop_22_adam_dense_372_kernel_v-
)assignvariableop_23_adam_dense_372_bias_v/
+assignvariableop_24_adam_dense_373_kernel_v-
)assignvariableop_25_adam_dense_373_bias_v/
+assignvariableop_26_adam_dense_374_kernel_v-
)assignvariableop_27_adam_dense_374_bias_v
identity_29��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2		2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOpassignvariableop_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOpassignvariableop_1_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOpassignvariableop_2_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp#assignvariableop_3_dense_372_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_372_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp#assignvariableop_5_dense_373_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_373_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOp#assignvariableop_7_dense_374_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_374_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_iterIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_2Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_decayIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_learning_rateIdentity_13:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adam_dense_372_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOp)assignvariableop_17_adam_dense_372_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adam_dense_373_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_373_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adam_dense_374_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp)assignvariableop_21_adam_dense_374_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adam_dense_372_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_372_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adam_dense_373_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_373_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adam_dense_374_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_374_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28�
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*�
_input_shapest
r: ::::::::::::::::::::::::::::2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
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
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
`
normalization_3_inputG
'serving_default_normalization_3_input:0������������������=
	dense_3740
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�(
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
	optimizer
	variables
regularization_losses
	trainable_variables

	keras_api

signatures
W__call__
*X&call_and_return_all_conditional_losses
Y_default_save_signature"�%
_tf_keras_sequential�%{"class_name": "Sequential", "name": "sequential_64", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_64", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_3_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_372", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_244", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_373", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_374", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, null]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_64", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "normalization_3_input"}}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}}, {"class_name": "Dense", "config": {"name": "dense_372", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_244", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_373", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_374", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "mse", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
�
state_variables
_broadcast_shape
mean
variance
	count
	keras_api"�
_tf_keras_layer�{"class_name": "Normalization", "name": "normalization_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [-1]}}, "build_input_shape": [512, 15]}
�

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
Z__call__
*[&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_372", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_372", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 15}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 15]}}
�
	variables
regularization_losses
trainable_variables
	keras_api
\__call__
*]&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout_244", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_244", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}
�

kernel
bias
	variables
regularization_losses
 trainable_variables
!	keras_api
^__call__
*_&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_373", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_373", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.0010000000474974513}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�

"kernel
#bias
$	variables
%regularization_losses
&trainable_variables
'	keras_api
`__call__
*a&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_374", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_374", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
�
(iter

)beta_1

*beta_2
	+decay
,learning_ratemKmLmMmN"mO#mPvQvRvSvT"vU#vV"
	optimizer
_
0
1
2
3
4
5
6
"7
#8"
trackable_list_wrapper
.
b0
c1"
trackable_list_wrapper
J
0
1
2
3
"4
#5"
trackable_list_wrapper
�
-layer_metrics
.non_trainable_variables
/metrics
	variables
0layer_regularization_losses
regularization_losses
	trainable_variables

1layers
W__call__
Y_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
dserving_default"
signature_map
C
mean
variance
	count"
trackable_dict_wrapper
 "
trackable_list_wrapper
:2mean
:2variance
:	 2count
"
_generic_user_object
": @2dense_372/kernel
:@2dense_372/bias
.
0
1"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
2layer_metrics
3non_trainable_variables
4metrics
	variables
5layer_regularization_losses
regularization_losses
trainable_variables

6layers
Z__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
7layer_metrics
8non_trainable_variables
9metrics
	variables
:layer_regularization_losses
regularization_losses
trainable_variables

;layers
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
": @@2dense_373/kernel
:@2dense_373/bias
.
0
1"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
<layer_metrics
=non_trainable_variables
>metrics
	variables
?layer_regularization_losses
regularization_losses
 trainable_variables

@layers
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
": @2dense_374/kernel
:2dense_374/bias
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
�
Alayer_metrics
Bnon_trainable_variables
Cmetrics
$	variables
Dlayer_regularization_losses
%regularization_losses
&trainable_variables

Elayers
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
5
0
1
2"
trackable_list_wrapper
'
F0"
trackable_list_wrapper
 "
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
b0"
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
'
c0"
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
�
	Gtotal
	Hcount
I	variables
J	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
:  (2total
:  (2count
.
G0
H1"
trackable_list_wrapper
-
I	variables"
_generic_user_object
':%@2Adam/dense_372/kernel/m
!:@2Adam/dense_372/bias/m
':%@@2Adam/dense_373/kernel/m
!:@2Adam/dense_373/bias/m
':%@2Adam/dense_374/kernel/m
!:2Adam/dense_374/bias/m
':%@2Adam/dense_372/kernel/v
!:@2Adam/dense_372/bias/v
':%@@2Adam/dense_373/kernel/v
!:@2Adam/dense_373/bias/v
':%@2Adam/dense_374/kernel/v
!:2Adam/dense_374/bias/v
�2�
/__inference_sequential_64_layer_call_fn_3851717
/__inference_sequential_64_layer_call_fn_3851525
/__inference_sequential_64_layer_call_fn_3851696
/__inference_sequential_64_layer_call_fn_3851459�
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
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851392
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851675
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851347
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851625�
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
"__inference__wrapped_model_3851195�
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
annotations� *=�:
8�5
normalization_3_input������������������
�2�
+__inference_dense_372_layer_call_fn_3851749�
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
F__inference_dense_372_layer_call_and_return_conditional_losses_3851740�
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
�2�
-__inference_dropout_244_layer_call_fn_3851776
-__inference_dropout_244_layer_call_fn_3851771�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851761
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851766�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
+__inference_dense_373_layer_call_fn_3851808�
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
F__inference_dense_373_layer_call_and_return_conditional_losses_3851799�
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
+__inference_dense_374_layer_call_fn_3851827�
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
F__inference_dense_374_layer_call_and_return_conditional_losses_3851818�
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
__inference_loss_fn_0_3851838�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_3851849�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
%__inference_signature_wrapper_3851568normalization_3_input"�
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
"__inference__wrapped_model_3851195�"#G�D
=�:
8�5
normalization_3_input������������������
� "5�2
0
	dense_374#� 
	dense_374����������
F__inference_dense_372_layer_call_and_return_conditional_losses_3851740\/�,
%�"
 �
inputs���������
� "%�"
�
0���������@
� ~
+__inference_dense_372_layer_call_fn_3851749O/�,
%�"
 �
inputs���������
� "����������@�
F__inference_dense_373_layer_call_and_return_conditional_losses_3851799\/�,
%�"
 �
inputs���������@
� "%�"
�
0���������@
� ~
+__inference_dense_373_layer_call_fn_3851808O/�,
%�"
 �
inputs���������@
� "����������@�
F__inference_dense_374_layer_call_and_return_conditional_losses_3851818\"#/�,
%�"
 �
inputs���������@
� "%�"
�
0���������
� ~
+__inference_dense_374_layer_call_fn_3851827O"#/�,
%�"
 �
inputs���������@
� "�����������
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851761\3�0
)�&
 �
inputs���������@
p
� "%�"
�
0���������@
� �
H__inference_dropout_244_layer_call_and_return_conditional_losses_3851766\3�0
)�&
 �
inputs���������@
p 
� "%�"
�
0���������@
� �
-__inference_dropout_244_layer_call_fn_3851771O3�0
)�&
 �
inputs���������@
p
� "����������@�
-__inference_dropout_244_layer_call_fn_3851776O3�0
)�&
 �
inputs���������@
p 
� "����������@<
__inference_loss_fn_0_3851838�

� 
� "� <
__inference_loss_fn_1_3851849�

� 
� "� �
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851347�"#O�L
E�B
8�5
normalization_3_input������������������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851392�"#O�L
E�B
8�5
normalization_3_input������������������
p 

 
� "%�"
�
0���������
� �
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851625s"#@�=
6�3
)�&
inputs������������������
p

 
� "%�"
�
0���������
� �
J__inference_sequential_64_layer_call_and_return_conditional_losses_3851675s"#@�=
6�3
)�&
inputs������������������
p 

 
� "%�"
�
0���������
� �
/__inference_sequential_64_layer_call_fn_3851459u"#O�L
E�B
8�5
normalization_3_input������������������
p

 
� "�����������
/__inference_sequential_64_layer_call_fn_3851525u"#O�L
E�B
8�5
normalization_3_input������������������
p 

 
� "�����������
/__inference_sequential_64_layer_call_fn_3851696f"#@�=
6�3
)�&
inputs������������������
p

 
� "�����������
/__inference_sequential_64_layer_call_fn_3851717f"#@�=
6�3
)�&
inputs������������������
p 

 
� "�����������
%__inference_signature_wrapper_3851568�"#`�]
� 
V�S
Q
normalization_3_input8�5
normalization_3_input������������������"5�2
0
	dense_374#� 
	dense_374���������