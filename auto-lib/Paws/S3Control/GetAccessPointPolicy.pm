
package Paws::S3Control::GetAccessPointPolicy;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', header_name => 'x-amz-account-id', traits => ['ParamInHeader'], required => 1);
  has Name => (is => 'ro', isa => 'Str', uri_name => 'name', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessPointPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v20180820/accesspoint/{name}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3Control::GetAccessPointPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetAccessPointPolicy - Arguments for method GetAccessPointPolicy on L<Paws::S3Control>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessPointPolicy on the
L<AWS S3 Control|Paws::S3Control> service. Use the attributes of this class
as arguments to method GetAccessPointPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessPointPolicy.

=head1 SYNOPSIS

    my $s3-control = Paws->service('S3Control');
    my $GetAccessPointPolicyResult = $s3 -control->GetAccessPointPolicy(
      AccountId => 'MyAccountId',
      Name      => 'MyAccessPointName',

    );

    # Results:
    my $Policy = $GetAccessPointPolicyResult->Policy;

    # Returns a L<Paws::S3Control::GetAccessPointPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/s3-control/GetAccessPointPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID for the account that owns the specified access point.



=head2 B<REQUIRED> Name => Str

The name of the access point whose policy you want to retrieve.

For using this parameter with Amazon S3 on Outposts with the REST API,
you must specify the name and the x-amz-outpost-id as well.

For using this parameter with S3 on Outposts with the Amazon Web
Services SDK and CLI, you must specify the ARN of the access point
accessed in the format
C<arn:aws:s3-outposts:E<lt>RegionE<gt>:E<lt>account-idE<gt>:outpost/E<lt>outpost-idE<gt>/accesspoint/E<lt>my-accesspoint-nameE<gt>>.
For example, to access the access point C<reports-ap> through Outpost
C<my-outpost> owned by account C<123456789012> in Region C<us-west-2>,
use the URL encoding of
C<arn:aws:s3-outposts:us-west-2:123456789012:outpost/my-outpost/accesspoint/reports-ap>.
The value must be URL encoded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessPointPolicy in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

