
package Paws::Tnb::CreateSolNetworkInstance;
  use Moose;
  has NsDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsDescription');
  has NsdInfoId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsdInfoId', required => 1);
  has NsName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nsName', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSolNetworkInstance');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nslcm/v1/ns_instances');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::CreateSolNetworkInstanceOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CreateSolNetworkInstance - Arguments for method CreateSolNetworkInstance on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolNetworkInstance on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method CreateSolNetworkInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolNetworkInstance.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $CreateSolNetworkInstanceOutput = $tnb->CreateSolNetworkInstance(
      NsName        => 'MyCreateSolNetworkInstanceInputNsNameString',
      NsdInfoId     => 'MyNsdInfoId',
      NsDescription =>
        'MyCreateSolNetworkInstanceInputNsDescriptionString',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn            = $CreateSolNetworkInstanceOutput->Arn;
    my $Id             = $CreateSolNetworkInstanceOutput->Id;
    my $NsInstanceName = $CreateSolNetworkInstanceOutput->NsInstanceName;
    my $NsdInfoId      = $CreateSolNetworkInstanceOutput->NsdInfoId;
    my $Tags           = $CreateSolNetworkInstanceOutput->Tags;

    # Returns a L<Paws::Tnb::CreateSolNetworkInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/CreateSolNetworkInstance>

=head1 ATTRIBUTES


=head2 NsDescription => Str

Network instance description.



=head2 B<REQUIRED> NsdInfoId => Str

ID for network service descriptor.



=head2 B<REQUIRED> NsName => Str

Network instance name.



=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolNetworkInstance in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

