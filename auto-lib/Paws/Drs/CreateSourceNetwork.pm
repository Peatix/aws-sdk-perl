
package Paws::Drs::CreateSourceNetwork;
  use Moose;
  has OriginAccountID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originAccountID', required => 1);
  has OriginRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'originRegion', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Drs::TagsMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSourceNetwork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateSourceNetwork');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::CreateSourceNetworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::CreateSourceNetwork - Arguments for method CreateSourceNetwork on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSourceNetwork on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method CreateSourceNetwork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSourceNetwork.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $CreateSourceNetworkResponse = $drs->CreateSourceNetwork(
      OriginAccountID => 'MyAccountID',
      OriginRegion    => 'MyAwsRegion',
      VpcID           => 'MyVpcID',
      Tags            => {
        'MyTagKey' => 'MyTagValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $SourceNetworkID = $CreateSourceNetworkResponse->SourceNetworkID;

    # Returns a L<Paws::Drs::CreateSourceNetworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/CreateSourceNetwork>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OriginAccountID => Str

Account containing the VPC to protect.



=head2 B<REQUIRED> OriginRegion => Str

Region containing the VPC to protect.



=head2 Tags => L<Paws::Drs::TagsMap>

A set of tags to be associated with the Source Network resource.



=head2 B<REQUIRED> VpcID => Str

Which VPC ID to protect.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSourceNetwork in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

