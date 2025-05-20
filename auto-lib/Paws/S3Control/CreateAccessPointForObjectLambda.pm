
package Paws::S3Control::CreateAccessPointForObjectLambda;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::S3Control::ObjectLambdaConfiguration', required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAccessPointForObjectLambda');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspointforobjectlambda/{name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::CreateAccessPointForObjectLambdaResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateAccessPointForObjectLambdaRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://awss3control.amazonaws.com/doc/2018-08-20/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::CreateAccessPointForObjectLambda - Arguments for method CreateAccessPointForObjectLambda on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAccessPointForObjectLambda on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method CreateAccessPointForObjectLambda.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAccessPointForObjectLambda.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $CreateAccessPointForObjectLambdaResult =
      $s3 -control->CreateAccessPointForObjectLambda(
      AccountId     => 'MyAccountId',
      Configuration => {
        SupportingAccessPoint =>
          'MyObjectLambdaSupportingAccessPointArn',    # min: 1, max: 2048
        TransformationConfigurations => [
          {
            Actions => [
              'GetObject',
              ...    # values: GetObject, HeadObject, ListObjects, ListObjectsV2
            ],
            ContentTransformation => {
              AwsLambda => {
                FunctionArn     => 'MyFunctionArnString',    # min: 1, max: 1024
                FunctionPayload =>
                  'MyAwsLambdaTransformationPayload',        # OPTIONAL
              },    # OPTIONAL
            },

          },
          ...
        ],
        AllowedFeatures => [
          'GetObject-Range',
          ... # values: GetObject-Range, GetObject-PartNumber, HeadObject-Range, HeadObject-PartNumber
        ],    # OPTIONAL
        CloudWatchMetricsEnabled => 1,    # OPTIONAL
      },
      Name => 'MyObjectLambdaAccessPointName',

      );

    # Results:
    my $Alias = $CreateAccessPointForObjectLambdaResult->Alias;
    my $ObjectLambdaAccessPointArn =
      $CreateAccessPointForObjectLambdaResult->ObjectLambdaAccessPointArn;

  # Returns a L<Paws::S3Control::CreateAccessPointForObjectLambdaResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/CreateAccessPointForObjectLambda>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Web Services account ID for owner of the specified Object
Lambda Access Point.



=head2 B<REQUIRED> Configuration => L<Paws::S3Control::ObjectLambdaConfiguration>

Object Lambda Access Point configuration as a JSON document.



=head2 B<REQUIRED> Name => Str

The name you want to assign to this Object Lambda Access Point.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAccessPointForObjectLambda in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

