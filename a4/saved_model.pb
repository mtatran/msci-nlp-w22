©Ö
é¿
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
­
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(
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

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
-
Tanh
x"T
y"T"
Ttype:

2
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68¤â

word_embedding_layer/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
´d*0
shared_name!word_embedding_layer/embeddings

3word_embedding_layer/embeddings/Read/ReadVariableOpReadVariableOpword_embedding_layer/embeddings* 
_output_shapes
:
´d*
dtype0

hidden_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*$
shared_namehidden_layer/kernel
|
'hidden_layer/kernel/Read/ReadVariableOpReadVariableOphidden_layer/kernel*
_output_shapes
:	d*
dtype0
{
hidden_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_namehidden_layer/bias
t
%hidden_layer/bias/Read/ReadVariableOpReadVariableOphidden_layer/bias*
_output_shapes	
:*
dtype0

output_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*$
shared_nameoutput_layer/kernel
|
'output_layer/kernel/Read/ReadVariableOpReadVariableOpoutput_layer/kernel*
_output_shapes
:	*
dtype0
z
output_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameoutput_layer/bias
s
%output_layer/bias/Read/ReadVariableOpReadVariableOpoutput_layer/bias*
_output_shapes
:*
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

NoOpNoOp
À
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*û
valueñBî Bç
Î
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¥
	variables
trainable_variables
regularization_losses
 	keras_api
!_random_generator
"__call__
*#&call_and_return_all_conditional_losses* 
¦

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses*
* 
'
0
1
2
$3
%4*
 
0
1
$2
%3*
* 
°
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

1serving_default* 
sm
VARIABLE_VALUEword_embedding_layer/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*
* 
* 

2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
c]
VARIABLE_VALUEhidden_layer/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEhidden_layer/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
* 
c]
VARIABLE_VALUEoutput_layer/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEoutput_layer/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
* 

Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses*
* 
* 

0*
 
0
1
2
3*

F0
G1*
* 
* 
* 

0*
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
8
	Htotal
	Icount
J	variables
K	keras_api*
H
	Ltotal
	Mcount
N
_fn_kwargs
O	variables
P	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

J	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

L0
M1*

O	variables*

*serving_default_word_embedding_layer_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
Â
StatefulPartitionedCallStatefulPartitionedCall*serving_default_word_embedding_layer_inputword_embedding_layer/embeddingshidden_layer/kernelhidden_layer/biasoutput_layer/kerneloutput_layer/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_5504
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ç
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename3word_embedding_layer/embeddings/Read/ReadVariableOp'hidden_layer/kernel/Read/ReadVariableOp%hidden_layer/bias/Read/ReadVariableOp'output_layer/kernel/Read/ReadVariableOp%output_layer/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2*
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
__inference__traced_save_5678
®
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameword_embedding_layer/embeddingshidden_layer/kernelhidden_layer/biasoutput_layer/kerneloutput_layer/biastotalcounttotal_1count_1*
Tin
2
*
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
 __inference__traced_restore_5715ð¤
P
è
F__inference_sequential_7_layer_call_and_return_conditional_losses_5413

inputs>
*word_embedding_layer_embedding_lookup_5350:
´dA
.hidden_layer_tensordot_readvariableop_resource:	d;
,hidden_layer_biasadd_readvariableop_resource:	A
.output_layer_tensordot_readvariableop_resource:	:
,output_layer_biasadd_readvariableop_resource:
identity¢#hidden_layer/BiasAdd/ReadVariableOp¢%hidden_layer/Tensordot/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢%output_layer/Tensordot/ReadVariableOp¢%word_embedding_layer/embedding_lookupj
word_embedding_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%word_embedding_layer/embedding_lookupResourceGather*word_embedding_layer_embedding_lookup_5350word_embedding_layer/Cast:y:0*
Tindices0*=
_class3
1/loc:@word_embedding_layer/embedding_lookup/5350*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0ß
.word_embedding_layer/embedding_lookup/IdentityIdentity.word_embedding_layer/embedding_lookup:output:0*
T0*=
_class3
1/loc:@word_embedding_layer/embedding_lookup/5350*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
0word_embedding_layer/embedding_lookup/Identity_1Identity7word_embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
word_embedding_layer/NotEqualNotEqualinputs(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%hidden_layer/Tensordot/ReadVariableOpReadVariableOp.hidden_layer_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0e
hidden_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
hidden_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_layer/Tensordot/ShapeShape9word_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:f
$hidden_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
hidden_layer/Tensordot/GatherV2GatherV2%hidden_layer/Tensordot/Shape:output:0$hidden_layer/Tensordot/free:output:0-hidden_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&hidden_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
!hidden_layer/Tensordot/GatherV2_1GatherV2%hidden_layer/Tensordot/Shape:output:0$hidden_layer/Tensordot/axes:output:0/hidden_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
hidden_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
hidden_layer/Tensordot/ProdProd(hidden_layer/Tensordot/GatherV2:output:0%hidden_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
hidden_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
hidden_layer/Tensordot/Prod_1Prod*hidden_layer/Tensordot/GatherV2_1:output:0'hidden_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"hidden_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
hidden_layer/Tensordot/concatConcatV2$hidden_layer/Tensordot/free:output:0$hidden_layer/Tensordot/axes:output:0+hidden_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
: 
hidden_layer/Tensordot/stackPack$hidden_layer/Tensordot/Prod:output:0&hidden_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
 hidden_layer/Tensordot/transpose	Transpose9word_embedding_layer/embedding_lookup/Identity_1:output:0&hidden_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
hidden_layer/Tensordot/ReshapeReshape$hidden_layer/Tensordot/transpose:y:0%hidden_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
hidden_layer/Tensordot/MatMulMatMul'hidden_layer/Tensordot/Reshape:output:0-hidden_layer/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
hidden_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:f
$hidden_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
hidden_layer/Tensordot/concat_1ConcatV2(hidden_layer/Tensordot/GatherV2:output:0'hidden_layer/Tensordot/Const_2:output:0-hidden_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:«
hidden_layer/TensordotReshape'hidden_layer/Tensordot/MatMul:product:0(hidden_layer/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#hidden_layer/BiasAdd/ReadVariableOpReadVariableOp,hidden_layer_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
hidden_layer/BiasAddBiasAddhidden_layer/Tensordot:output:0+hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
hidden_layer/TanhTanhhidden_layer/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
dropout_1/IdentityIdentityhidden_layer/Tanh:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%output_layer/Tensordot/ReadVariableOpReadVariableOp.output_layer_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0e
output_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
output_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
output_layer/Tensordot/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:f
$output_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
output_layer/Tensordot/GatherV2GatherV2%output_layer/Tensordot/Shape:output:0$output_layer/Tensordot/free:output:0-output_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&output_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
!output_layer/Tensordot/GatherV2_1GatherV2%output_layer/Tensordot/Shape:output:0$output_layer/Tensordot/axes:output:0/output_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
output_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output_layer/Tensordot/ProdProd(output_layer/Tensordot/GatherV2:output:0%output_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
output_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
output_layer/Tensordot/Prod_1Prod*output_layer/Tensordot/GatherV2_1:output:0'output_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"output_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
output_layer/Tensordot/concatConcatV2$output_layer/Tensordot/free:output:0$output_layer/Tensordot/axes:output:0+output_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
: 
output_layer/Tensordot/stackPack$output_layer/Tensordot/Prod:output:0&output_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:©
 output_layer/Tensordot/transpose	Transposedropout_1/Identity:output:0&output_layer/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
output_layer/Tensordot/ReshapeReshape$output_layer/Tensordot/transpose:y:0%output_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ±
output_layer/Tensordot/MatMulMatMul'output_layer/Tensordot/Reshape:output:0-output_layer/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
output_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:f
$output_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
output_layer/Tensordot/concat_1ConcatV2(output_layer/Tensordot/GatherV2:output:0'output_layer/Tensordot/Const_2:output:0-output_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ª
output_layer/TensordotReshape'output_layer/Tensordot/MatMul:product:0(output_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
output_layer/BiasAddBiasAddoutput_layer/Tensordot:output:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
output_layer/SoftmaxSoftmaxoutput_layer/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentityoutput_layer/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^hidden_layer/BiasAdd/ReadVariableOp&^hidden_layer/Tensordot/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp&^output_layer/Tensordot/ReadVariableOp&^word_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2J
#hidden_layer/BiasAdd/ReadVariableOp#hidden_layer/BiasAdd/ReadVariableOp2N
%hidden_layer/Tensordot/ReadVariableOp%hidden_layer/Tensordot/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2N
%output_layer/Tensordot/ReadVariableOp%output_layer/Tensordot/ReadVariableOp2N
%word_embedding_layer/embedding_lookup%word_embedding_layer/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸

3__inference_word_embedding_layer_layer_call_fn_5511

inputs
unknown:
´d
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
ð
+__inference_sequential_7_layer_call_fn_5331

inputs
unknown:
´d
	unknown_0:	d
	unknown_1:	
	unknown_2:	
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_5147s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
þ
F__inference_output_layer_layer_call_and_return_conditional_losses_5140

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¥
ÿ
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096

inputs4
!tensordot_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¯
þ
F__inference_output_layer_layer_call_and_return_conditional_losses_5628

inputs4
!tensordot_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
SoftmaxSoftmaxBiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs


b
C__inference_dropout_1_layer_call_and_return_conditional_losses_5588

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å'
»
 __inference__traced_restore_5715
file_prefixD
0assignvariableop_word_embedding_layer_embeddings:
´d9
&assignvariableop_1_hidden_layer_kernel:	d3
$assignvariableop_2_hidden_layer_bias:	9
&assignvariableop_3_output_layer_kernel:	2
$assignvariableop_4_output_layer_bias:"
assignvariableop_5_total: "
assignvariableop_6_count: $
assignvariableop_7_total_1: $
assignvariableop_8_count_1: 
identity_10¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8ý
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*£
valueB
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B Ð
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*<
_output_shapes*
(::::::::::*
dtypes
2
[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp0assignvariableop_word_embedding_layer_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp&assignvariableop_1_hidden_layer_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_hidden_layer_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp&assignvariableop_3_output_layer_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_output_layer_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_totalIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_countIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_total_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_count_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 

Identity_9Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^NoOp"/device:CPU:0*
T0*
_output_shapes
: V
Identity_10IdentityIdentity_9:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8*"
_acd_function_control_output(*
_output_shapes
 "#
identity_10Identity_10:output:0*'
_input_shapes
: : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_8:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ê
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_5107

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
Ø
F__inference_sequential_7_layer_call_and_return_conditional_losses_5316
word_embedding_layer_input-
word_embedding_layer_5299:
´d$
hidden_layer_5304:	d 
hidden_layer_5306:	$
output_layer_5310:	
output_layer_5312:
identity¢!dropout_1/StatefulPartitionedCall¢$hidden_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCall¢,word_embedding_layer/StatefulPartitionedCall
,word_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallword_embedding_layer_inputword_embedding_layer_5299*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059d
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
word_embedding_layer/NotEqualNotEqualword_embedding_layer_input(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall5word_embedding_layer/StatefulPartitionedCall:output:0hidden_layer_5304hidden_layer_5306*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096ô
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5190¢
$output_layer/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_layer_5310output_layer_5312*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_5140
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp"^dropout_1/StatefulPartitionedCall%^hidden_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall-^word_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall2\
,word_embedding_layer/StatefulPartitionedCall,word_embedding_layer/StatefulPartitionedCall:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input
¤	
«
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059

inputs)
embedding_lookup_5053:
´d
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
embedding_lookupResourceGatherembedding_lookup_5053Cast:y:0*
Tindices0*(
_class
loc:@embedding_lookup/5053*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0 
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/5053*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
`
×
__inference__wrapped_model_5042
word_embedding_layer_inputK
7sequential_7_word_embedding_layer_embedding_lookup_4979:
´dN
;sequential_7_hidden_layer_tensordot_readvariableop_resource:	dH
9sequential_7_hidden_layer_biasadd_readvariableop_resource:	N
;sequential_7_output_layer_tensordot_readvariableop_resource:	G
9sequential_7_output_layer_biasadd_readvariableop_resource:
identity¢0sequential_7/hidden_layer/BiasAdd/ReadVariableOp¢2sequential_7/hidden_layer/Tensordot/ReadVariableOp¢0sequential_7/output_layer/BiasAdd/ReadVariableOp¢2sequential_7/output_layer/Tensordot/ReadVariableOp¢2sequential_7/word_embedding_layer/embedding_lookup
&sequential_7/word_embedding_layer/CastCastword_embedding_layer_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
2sequential_7/word_embedding_layer/embedding_lookupResourceGather7sequential_7_word_embedding_layer_embedding_lookup_4979*sequential_7/word_embedding_layer/Cast:y:0*
Tindices0*J
_class@
><loc:@sequential_7/word_embedding_layer/embedding_lookup/4979*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0
;sequential_7/word_embedding_layer/embedding_lookup/IdentityIdentity;sequential_7/word_embedding_layer/embedding_lookup:output:0*
T0*J
_class@
><loc:@sequential_7/word_embedding_layer/embedding_lookup/4979*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÅ
=sequential_7/word_embedding_layer/embedding_lookup/Identity_1IdentityDsequential_7/word_embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdq
,sequential_7/word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    »
*sequential_7/word_embedding_layer/NotEqualNotEqualword_embedding_layer_input5sequential_7/word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
2sequential_7/hidden_layer/Tensordot/ReadVariableOpReadVariableOp;sequential_7_hidden_layer_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0r
(sequential_7/hidden_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(sequential_7/hidden_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
)sequential_7/hidden_layer/Tensordot/ShapeShapeFsequential_7/word_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:s
1sequential_7/hidden_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : £
,sequential_7/hidden_layer/Tensordot/GatherV2GatherV22sequential_7/hidden_layer/Tensordot/Shape:output:01sequential_7/hidden_layer/Tensordot/free:output:0:sequential_7/hidden_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3sequential_7/hidden_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
.sequential_7/hidden_layer/Tensordot/GatherV2_1GatherV22sequential_7/hidden_layer/Tensordot/Shape:output:01sequential_7/hidden_layer/Tensordot/axes:output:0<sequential_7/hidden_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)sequential_7/hidden_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_7/hidden_layer/Tensordot/ProdProd5sequential_7/hidden_layer/Tensordot/GatherV2:output:02sequential_7/hidden_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+sequential_7/hidden_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Â
*sequential_7/hidden_layer/Tensordot/Prod_1Prod7sequential_7/hidden_layer/Tensordot/GatherV2_1:output:04sequential_7/hidden_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/sequential_7/hidden_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_7/hidden_layer/Tensordot/concatConcatV21sequential_7/hidden_layer/Tensordot/free:output:01sequential_7/hidden_layer/Tensordot/axes:output:08sequential_7/hidden_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_7/hidden_layer/Tensordot/stackPack1sequential_7/hidden_layer/Tensordot/Prod:output:03sequential_7/hidden_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:í
-sequential_7/hidden_layer/Tensordot/transpose	TransposeFsequential_7/word_embedding_layer/embedding_lookup/Identity_1:output:03sequential_7/hidden_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdØ
+sequential_7/hidden_layer/Tensordot/ReshapeReshape1sequential_7/hidden_layer/Tensordot/transpose:y:02sequential_7/hidden_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÙ
*sequential_7/hidden_layer/Tensordot/MatMulMatMul4sequential_7/hidden_layer/Tensordot/Reshape:output:0:sequential_7/hidden_layer/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
+sequential_7/hidden_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:s
1sequential_7/hidden_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_7/hidden_layer/Tensordot/concat_1ConcatV25sequential_7/hidden_layer/Tensordot/GatherV2:output:04sequential_7/hidden_layer/Tensordot/Const_2:output:0:sequential_7/hidden_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ò
#sequential_7/hidden_layer/TensordotReshape4sequential_7/hidden_layer/Tensordot/MatMul:product:05sequential_7/hidden_layer/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0sequential_7/hidden_layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_7_hidden_layer_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ë
!sequential_7/hidden_layer/BiasAddBiasAdd,sequential_7/hidden_layer/Tensordot:output:08sequential_7/hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_7/hidden_layer/TanhTanh*sequential_7/hidden_layer/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_7/dropout_1/IdentityIdentity"sequential_7/hidden_layer/Tanh:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
2sequential_7/output_layer/Tensordot/ReadVariableOpReadVariableOp;sequential_7_output_layer_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0r
(sequential_7/output_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:y
(sequential_7/output_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
)sequential_7/output_layer/Tensordot/ShapeShape(sequential_7/dropout_1/Identity:output:0*
T0*
_output_shapes
:s
1sequential_7/output_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : £
,sequential_7/output_layer/Tensordot/GatherV2GatherV22sequential_7/output_layer/Tensordot/Shape:output:01sequential_7/output_layer/Tensordot/free:output:0:sequential_7/output_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:u
3sequential_7/output_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
.sequential_7/output_layer/Tensordot/GatherV2_1GatherV22sequential_7/output_layer/Tensordot/Shape:output:01sequential_7/output_layer/Tensordot/axes:output:0<sequential_7/output_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:s
)sequential_7/output_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ¼
(sequential_7/output_layer/Tensordot/ProdProd5sequential_7/output_layer/Tensordot/GatherV2:output:02sequential_7/output_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: u
+sequential_7/output_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Â
*sequential_7/output_layer/Tensordot/Prod_1Prod7sequential_7/output_layer/Tensordot/GatherV2_1:output:04sequential_7/output_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: q
/sequential_7/output_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
*sequential_7/output_layer/Tensordot/concatConcatV21sequential_7/output_layer/Tensordot/free:output:01sequential_7/output_layer/Tensordot/axes:output:08sequential_7/output_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ç
)sequential_7/output_layer/Tensordot/stackPack1sequential_7/output_layer/Tensordot/Prod:output:03sequential_7/output_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ð
-sequential_7/output_layer/Tensordot/transpose	Transpose(sequential_7/dropout_1/Identity:output:03sequential_7/output_layer/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
+sequential_7/output_layer/Tensordot/ReshapeReshape1sequential_7/output_layer/Tensordot/transpose:y:02sequential_7/output_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿØ
*sequential_7/output_layer/Tensordot/MatMulMatMul4sequential_7/output_layer/Tensordot/Reshape:output:0:sequential_7/output_layer/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
+sequential_7/output_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:s
1sequential_7/output_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,sequential_7/output_layer/Tensordot/concat_1ConcatV25sequential_7/output_layer/Tensordot/GatherV2:output:04sequential_7/output_layer/Tensordot/Const_2:output:0:sequential_7/output_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ñ
#sequential_7/output_layer/TensordotReshape4sequential_7/output_layer/Tensordot/MatMul:product:05sequential_7/output_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
0sequential_7/output_layer/BiasAdd/ReadVariableOpReadVariableOp9sequential_7_output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ê
!sequential_7/output_layer/BiasAddBiasAdd,sequential_7/output_layer/Tensordot:output:08sequential_7/output_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!sequential_7/output_layer/SoftmaxSoftmax*sequential_7/output_layer/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
IdentityIdentity+sequential_7/output_layer/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿË
NoOpNoOp1^sequential_7/hidden_layer/BiasAdd/ReadVariableOp3^sequential_7/hidden_layer/Tensordot/ReadVariableOp1^sequential_7/output_layer/BiasAdd/ReadVariableOp3^sequential_7/output_layer/Tensordot/ReadVariableOp3^sequential_7/word_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2d
0sequential_7/hidden_layer/BiasAdd/ReadVariableOp0sequential_7/hidden_layer/BiasAdd/ReadVariableOp2h
2sequential_7/hidden_layer/Tensordot/ReadVariableOp2sequential_7/hidden_layer/Tensordot/ReadVariableOp2d
0sequential_7/output_layer/BiasAdd/ReadVariableOp0sequential_7/output_layer/BiasAdd/ReadVariableOp2h
2sequential_7/output_layer/Tensordot/ReadVariableOp2sequential_7/output_layer/Tensordot/ReadVariableOp2h
2sequential_7/word_embedding_layer/embedding_lookup2sequential_7/word_embedding_layer/embedding_lookup:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input
ê
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_5576

inputs

identity_1S
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²

__inference__traced_save_5678
file_prefix>
:savev2_word_embedding_layer_embeddings_read_readvariableop2
.savev2_hidden_layer_kernel_read_readvariableop0
,savev2_hidden_layer_bias_read_readvariableop2
.savev2_output_layer_kernel_read_readvariableop0
,savev2_output_layer_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
: ú
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*£
valueB
B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:
*
dtype0*'
valueB
B B B B B B B B B B ½
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0:savev2_word_embedding_layer_embeddings_read_readvariableop.savev2_hidden_layer_kernel_read_readvariableop,savev2_hidden_layer_bias_read_readvariableop.savev2_output_layer_kernel_read_readvariableop,savev2_output_layer_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2

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

identity_1Identity_1:output:0*N
_input_shapes=
;: :
´d:	d::	:: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
´d:%!

_output_shapes
:	d:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: 
á
 
F__inference_sequential_7_layer_call_and_return_conditional_losses_5147

inputs-
word_embedding_layer_5060:
´d$
hidden_layer_5097:	d 
hidden_layer_5099:	$
output_layer_5141:	
output_layer_5143:
identity¢$hidden_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCall¢,word_embedding_layer/StatefulPartitionedCall
,word_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallinputsword_embedding_layer_5060*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059d
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
word_embedding_layer/NotEqualNotEqualinputs(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall5word_embedding_layer/StatefulPartitionedCall:output:0hidden_layer_5097hidden_layer_5099*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096ä
dropout_1/PartitionedCallPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5107
$output_layer/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_layer_5141output_layer_5143*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_5140
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall-^word_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall2\
,word_embedding_layer/StatefulPartitionedCall,word_embedding_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

+__inference_sequential_7_layer_call_fn_5160
word_embedding_layer_input
unknown:
´d
	unknown_0:	d
	unknown_1:	
	unknown_2:	
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallword_embedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_5147s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input
¥
ÿ
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5561

inputs4
!tensordot_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
TanhTanhBiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
IdentityIdentityTanh:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¤	
«
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5521

inputs)
embedding_lookup_5515:
´d
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ·
embedding_lookupResourceGatherembedding_lookup_5515Cast:y:0*
Tindices0*(
_class
loc:@embedding_lookup/5515*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0 
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*(
_class
loc:@embedding_lookup/5515*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ä
F__inference_sequential_7_layer_call_and_return_conditional_losses_5248

inputs-
word_embedding_layer_5231:
´d$
hidden_layer_5236:	d 
hidden_layer_5238:	$
output_layer_5242:	
output_layer_5244:
identity¢!dropout_1/StatefulPartitionedCall¢$hidden_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCall¢,word_embedding_layer/StatefulPartitionedCall
,word_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallinputsword_embedding_layer_5231*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059d
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
word_embedding_layer/NotEqualNotEqualinputs(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall5word_embedding_layer/StatefulPartitionedCall:output:0hidden_layer_5236hidden_layer_5238*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096ô
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5190¢
$output_layer/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0output_layer_5242output_layer_5244*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_5140
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿç
NoOpNoOp"^dropout_1/StatefulPartitionedCall%^hidden_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall-^word_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall2\
,word_embedding_layer/StatefulPartitionedCall,word_embedding_layer/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
D
(__inference_dropout_1_layer_call_fn_5566

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5107e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
ð
+__inference_sequential_7_layer_call_fn_5346

inputs
unknown:
´d
	unknown_0:	d
	unknown_1:	
	unknown_2:	
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_5248s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß
û
"__inference_signature_wrapper_5504
word_embedding_layer_input
unknown:
´d
	unknown_0:	d
	unknown_1:	
	unknown_2:	
	unknown_3:
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallword_embedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_5042s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input
ÛW
è
F__inference_sequential_7_layer_call_and_return_conditional_losses_5487

inputs>
*word_embedding_layer_embedding_lookup_5417:
´dA
.hidden_layer_tensordot_readvariableop_resource:	d;
,hidden_layer_biasadd_readvariableop_resource:	A
.output_layer_tensordot_readvariableop_resource:	:
,output_layer_biasadd_readvariableop_resource:
identity¢#hidden_layer/BiasAdd/ReadVariableOp¢%hidden_layer/Tensordot/ReadVariableOp¢#output_layer/BiasAdd/ReadVariableOp¢%output_layer/Tensordot/ReadVariableOp¢%word_embedding_layer/embedding_lookupj
word_embedding_layer/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%word_embedding_layer/embedding_lookupResourceGather*word_embedding_layer_embedding_lookup_5417word_embedding_layer/Cast:y:0*
Tindices0*=
_class3
1/loc:@word_embedding_layer/embedding_lookup/5417*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0ß
.word_embedding_layer/embedding_lookup/IdentityIdentity.word_embedding_layer/embedding_lookup:output:0*
T0*=
_class3
1/loc:@word_embedding_layer/embedding_lookup/5417*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd«
0word_embedding_layer/embedding_lookup/Identity_1Identity7word_embedding_layer/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    
word_embedding_layer/NotEqualNotEqualinputs(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%hidden_layer/Tensordot/ReadVariableOpReadVariableOp.hidden_layer_tensordot_readvariableop_resource*
_output_shapes
:	d*
dtype0e
hidden_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
hidden_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
hidden_layer/Tensordot/ShapeShape9word_embedding_layer/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:f
$hidden_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
hidden_layer/Tensordot/GatherV2GatherV2%hidden_layer/Tensordot/Shape:output:0$hidden_layer/Tensordot/free:output:0-hidden_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&hidden_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
!hidden_layer/Tensordot/GatherV2_1GatherV2%hidden_layer/Tensordot/Shape:output:0$hidden_layer/Tensordot/axes:output:0/hidden_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
hidden_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
hidden_layer/Tensordot/ProdProd(hidden_layer/Tensordot/GatherV2:output:0%hidden_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
hidden_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
hidden_layer/Tensordot/Prod_1Prod*hidden_layer/Tensordot/GatherV2_1:output:0'hidden_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"hidden_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
hidden_layer/Tensordot/concatConcatV2$hidden_layer/Tensordot/free:output:0$hidden_layer/Tensordot/axes:output:0+hidden_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
: 
hidden_layer/Tensordot/stackPack$hidden_layer/Tensordot/Prod:output:0&hidden_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Æ
 hidden_layer/Tensordot/transpose	Transpose9word_embedding_layer/embedding_lookup/Identity_1:output:0&hidden_layer/Tensordot/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd±
hidden_layer/Tensordot/ReshapeReshape$hidden_layer/Tensordot/transpose:y:0%hidden_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ²
hidden_layer/Tensordot/MatMulMatMul'hidden_layer/Tensordot/Reshape:output:0-hidden_layer/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
hidden_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:f
$hidden_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
hidden_layer/Tensordot/concat_1ConcatV2(hidden_layer/Tensordot/GatherV2:output:0'hidden_layer/Tensordot/Const_2:output:0-hidden_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:«
hidden_layer/TensordotReshape'hidden_layer/Tensordot/MatMul:product:0(hidden_layer/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#hidden_layer/BiasAdd/ReadVariableOpReadVariableOp,hidden_layer_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¤
hidden_layer/BiasAddBiasAddhidden_layer/Tensordot:output:0+hidden_layer/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
hidden_layer/TanhTanhhidden_layer/BiasAdd:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_1/dropout/MulMulhidden_layer/Tanh:y:0 dropout_1/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_1/dropout/ShapeShapehidden_layer/Tanh:y:0*
T0*
_output_shapes
:¥
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>É
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%output_layer/Tensordot/ReadVariableOpReadVariableOp.output_layer_tensordot_readvariableop_resource*
_output_shapes
:	*
dtype0e
output_layer/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:l
output_layer/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       g
output_layer/Tensordot/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:f
$output_layer/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ï
output_layer/Tensordot/GatherV2GatherV2%output_layer/Tensordot/Shape:output:0$output_layer/Tensordot/free:output:0-output_layer/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:h
&output_layer/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
!output_layer/Tensordot/GatherV2_1GatherV2%output_layer/Tensordot/Shape:output:0$output_layer/Tensordot/axes:output:0/output_layer/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:f
output_layer/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
output_layer/Tensordot/ProdProd(output_layer/Tensordot/GatherV2:output:0%output_layer/Tensordot/Const:output:0*
T0*
_output_shapes
: h
output_layer/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
output_layer/Tensordot/Prod_1Prod*output_layer/Tensordot/GatherV2_1:output:0'output_layer/Tensordot/Const_1:output:0*
T0*
_output_shapes
: d
"output_layer/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
output_layer/Tensordot/concatConcatV2$output_layer/Tensordot/free:output:0$output_layer/Tensordot/axes:output:0+output_layer/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
: 
output_layer/Tensordot/stackPack$output_layer/Tensordot/Prod:output:0&output_layer/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:©
 output_layer/Tensordot/transpose	Transposedropout_1/dropout/Mul_1:z:0&output_layer/Tensordot/concat:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ±
output_layer/Tensordot/ReshapeReshape$output_layer/Tensordot/transpose:y:0%output_layer/Tensordot/stack:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ±
output_layer/Tensordot/MatMulMatMul'output_layer/Tensordot/Reshape:output:0-output_layer/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
output_layer/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:f
$output_layer/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Û
output_layer/Tensordot/concat_1ConcatV2(output_layer/Tensordot/GatherV2:output:0'output_layer/Tensordot/Const_2:output:0-output_layer/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ª
output_layer/TensordotReshape'output_layer/Tensordot/MatMul:product:0(output_layer/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#output_layer/BiasAdd/ReadVariableOpReadVariableOp,output_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0£
output_layer/BiasAddBiasAddoutput_layer/Tensordot:output:0+output_layer/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
output_layer/SoftmaxSoftmaxoutput_layer/BiasAdd:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
IdentityIdentityoutput_layer/Softmax:softmax:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp$^hidden_layer/BiasAdd/ReadVariableOp&^hidden_layer/Tensordot/ReadVariableOp$^output_layer/BiasAdd/ReadVariableOp&^output_layer/Tensordot/ReadVariableOp&^word_embedding_layer/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2J
#hidden_layer/BiasAdd/ReadVariableOp#hidden_layer/BiasAdd/ReadVariableOp2N
%hidden_layer/Tensordot/ReadVariableOp%hidden_layer/Tensordot/ReadVariableOp2J
#output_layer/BiasAdd/ReadVariableOp#output_layer/BiasAdd/ReadVariableOp2N
%output_layer/Tensordot/ReadVariableOp%output_layer/Tensordot/ReadVariableOp2N
%word_embedding_layer/embedding_lookup%word_embedding_layer/embedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù

+__inference_output_layer_layer_call_fn_5597

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_5140s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
´
F__inference_sequential_7_layer_call_and_return_conditional_losses_5296
word_embedding_layer_input-
word_embedding_layer_5279:
´d$
hidden_layer_5284:	d 
hidden_layer_5286:	$
output_layer_5290:	
output_layer_5292:
identity¢$hidden_layer/StatefulPartitionedCall¢$output_layer/StatefulPartitionedCall¢,word_embedding_layer/StatefulPartitionedCall
,word_embedding_layer/StatefulPartitionedCallStatefulPartitionedCallword_embedding_layer_inputword_embedding_layer_5279*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5059d
word_embedding_layer/NotEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    ¡
word_embedding_layer/NotEqualNotEqualword_embedding_layer_input(word_embedding_layer/NotEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
$hidden_layer/StatefulPartitionedCallStatefulPartitionedCall5word_embedding_layer/StatefulPartitionedCall:output:0hidden_layer_5284hidden_layer_5286*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096ä
dropout_1/PartitionedCallPartitionedCall-hidden_layer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5107
$output_layer/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0output_layer_5290output_layer_5292*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_output_layer_layer_call_and_return_conditional_losses_5140
IdentityIdentity-output_layer/StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
NoOpNoOp%^hidden_layer/StatefulPartitionedCall%^output_layer/StatefulPartitionedCall-^word_embedding_layer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 2L
$hidden_layer/StatefulPartitionedCall$hidden_layer/StatefulPartitionedCall2L
$output_layer/StatefulPartitionedCall$output_layer/StatefulPartitionedCall2\
,word_embedding_layer/StatefulPartitionedCall,word_embedding_layer/StatefulPartitionedCall:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input


b
C__inference_dropout_1_layer_call_and_return_conditional_losses_5190

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?i
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>«
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú

+__inference_hidden_layer_layer_call_fn_5530

inputs
unknown:	d
	unknown_0:	
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5096t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

a
(__inference_dropout_1_layer_call_fn_5571

inputs
identity¢StatefulPartitionedCallÃ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_5190t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
	

+__inference_sequential_7_layer_call_fn_5276
word_embedding_layer_input
unknown:
´d
	unknown_0:	d
	unknown_1:	
	unknown_2:	
	unknown_3:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallword_embedding_layer_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_7_layer_call_and_return_conditional_losses_5248s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:c _
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
4
_user_specified_nameword_embedding_layer_input"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ù
serving_defaultÅ
a
word_embedding_layer_inputC
,serving_default_word_embedding_layer_input:0ÿÿÿÿÿÿÿÿÿD
output_layer4
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:[
è
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
trainable_variables
regularization_losses
		keras_api

__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
	variables
trainable_variables
regularization_losses
 	keras_api
!_random_generator
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_layer
»

$kernel
%bias
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses"
_tf_keras_layer
"
	optimizer
C
0
1
2
$3
%4"
trackable_list_wrapper
<
0
1
$2
%3"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
,non_trainable_variables

-layers
.metrics
/layer_regularization_losses
0layer_metrics
	variables
trainable_variables
regularization_losses

__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ú2÷
+__inference_sequential_7_layer_call_fn_5160
+__inference_sequential_7_layer_call_fn_5331
+__inference_sequential_7_layer_call_fn_5346
+__inference_sequential_7_layer_call_fn_5276À
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
æ2ã
F__inference_sequential_7_layer_call_and_return_conditional_losses_5413
F__inference_sequential_7_layer_call_and_return_conditional_losses_5487
F__inference_sequential_7_layer_call_and_return_conditional_losses_5296
F__inference_sequential_7_layer_call_and_return_conditional_losses_5316À
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
ÝBÚ
__inference__wrapped_model_5042word_embedding_layer_input"
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
,
1serving_default"
signature_map
3:1
´d2word_embedding_layer/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ý2Ú
3__inference_word_embedding_layer_layer_call_fn_5511¢
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
ø2õ
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5521¢
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
&:$	d2hidden_layer/kernel
 :2hidden_layer/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_hidden_layer_layer_call_fn_5530¢
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
ð2í
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5561¢
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
­
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_dropout_1_layer_call_fn_5566
(__inference_dropout_1_layer_call_fn_5571´
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
C__inference_dropout_1_layer_call_and_return_conditional_losses_5576
C__inference_dropout_1_layer_call_and_return_conditional_losses_5588´
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
&:$	2output_layer/kernel
:2output_layer/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_output_layer_layer_call_fn_5597¢
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
ð2í
F__inference_output_layer_layer_call_and_return_conditional_losses_5628¢
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
'
0"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÜBÙ
"__inference_signature_wrapper_5504word_embedding_layer_input"
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
'
0"
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
N
	Htotal
	Icount
J	variables
K	keras_api"
_tf_keras_metric
^
	Ltotal
	Mcount
N
_fn_kwargs
O	variables
P	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
H0
I1"
trackable_list_wrapper
-
J	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
-
O	variables"
_generic_user_object±
__inference__wrapped_model_5042$%C¢@
9¢6
41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ
ª "?ª<
:
output_layer*'
output_layerÿÿÿÿÿÿÿÿÿ­
C__inference_dropout_1_layer_call_and_return_conditional_losses_5576f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ­
C__inference_dropout_1_layer_call_and_return_conditional_losses_5588f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_dropout_1_layer_call_fn_5566Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
(__inference_dropout_1_layer_call_fn_5571Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¯
F__inference_hidden_layer_layer_call_and_return_conditional_losses_5561e3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_hidden_layer_layer_call_fn_5530X3¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ¯
F__inference_output_layer_layer_call_and_return_conditional_losses_5628e$%4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_output_layer_layer_call_fn_5597X$%4¢1
*¢'
%"
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÉ
F__inference_sequential_7_layer_call_and_return_conditional_losses_5296$%K¢H
A¢>
41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 É
F__inference_sequential_7_layer_call_and_return_conditional_losses_5316$%K¢H
A¢>
41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 µ
F__inference_sequential_7_layer_call_and_return_conditional_losses_5413k$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 µ
F__inference_sequential_7_layer_call_and_return_conditional_losses_5487k$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ
 ¡
+__inference_sequential_7_layer_call_fn_5160r$%K¢H
A¢>
41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¡
+__inference_sequential_7_layer_call_fn_5276r$%K¢H
A¢>
41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_7_layer_call_fn_5331^$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_7_layer_call_fn_5346^$%7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿÒ
"__inference_signature_wrapper_5504«$%a¢^
¢ 
WªT
R
word_embedding_layer_input41
word_embedding_layer_inputÿÿÿÿÿÿÿÿÿ"?ª<
:
output_layer*'
output_layerÿÿÿÿÿÿÿÿÿ±
N__inference_word_embedding_layer_layer_call_and_return_conditional_losses_5521_/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª ")¢&

0ÿÿÿÿÿÿÿÿÿd
 
3__inference_word_embedding_layer_layer_call_fn_5511R/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd