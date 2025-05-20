
package Paws::Deadline::CreateLicenseEndpoint;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Token');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'securityGroupIds', required => 1);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'subnetIds', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Deadline::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLicenseEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2023-10-12/license-endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Deadline::CreateLicenseEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Deadline::CreateLicenseEndpoint - Arguments for method CreateLicenseEndpoint on L<Paws::Deadline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLicenseEndpoint on the
L<AWSDeadlineCloud|Paws::Deadline> service. Use the attributes of this class
as arguments to method CreateLicenseEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLicenseEndpoint.

=head1 SYNOPSIS

    my $deadline = Paws->service('Deadline');
    my $CreateLicenseEndpointResponse = $deadline->CreateLicenseEndpoint(
      SecurityGroupIds => [ 'MySecurityGroupId', ... ],
      SubnetIds        => [
        'MySubnetId', ...    # min: 1, max: 32
      ],
      VpcId       => 'MyVpcId',
      ClientToken => 'MyClientToken',                  # OPTIONAL
      Tags        => { 'MyString' => 'MyString', },    # OPTIONAL
    );

    # Results:
    my $LicenseEndpointId = $CreateLicenseEndpointResponse->LicenseEndpointId;

    # Returns a L<Paws::Deadline::CreateLicenseEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/deadline/CreateLicenseEndpoint>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The unique token which the server uses to recognize retries of the same
request.



=head2 B<REQUIRED> SecurityGroupIds => ArrayRef[Str|Undef]

The security group IDs.



=head2 B<REQUIRED> SubnetIds => ArrayRef[Str|Undef]

The subnet IDs.



=head2 Tags => L<Paws::Deadline::Tags>

Each tag consists of a tag key and a tag value. Tag keys and values are
both required, but tag values can be empty strings.



=head2 B<REQUIRED> VpcId => Str

The VPC (virtual private cloud) ID to use with the license endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLicenseEndpoint in L<Paws::Deadline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

