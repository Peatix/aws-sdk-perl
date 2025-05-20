
package Paws::Tnb::CreateSolNetworkPackage;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::Tnb::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSolNetworkPackage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sol/nsd/v1/ns_descriptors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Tnb::CreateSolNetworkPackageOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Tnb::CreateSolNetworkPackage - Arguments for method CreateSolNetworkPackage on L<Paws::Tnb>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSolNetworkPackage on the
L<AWS Telco Network Builder|Paws::Tnb> service. Use the attributes of this class
as arguments to method CreateSolNetworkPackage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSolNetworkPackage.

=head1 SYNOPSIS

    my $tnb = Paws->service('Tnb');
    my $CreateSolNetworkPackageOutput = $tnb->CreateSolNetworkPackage(
      Tags => {
        'MyTagKey' => 'MyTagValue',    # , value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateSolNetworkPackageOutput->Arn;
    my $Id                 = $CreateSolNetworkPackageOutput->Id;
    my $NsdOnboardingState = $CreateSolNetworkPackageOutput->NsdOnboardingState;
    my $NsdOperationalState =
      $CreateSolNetworkPackageOutput->NsdOperationalState;
    my $NsdUsageState = $CreateSolNetworkPackageOutput->NsdUsageState;
    my $Tags          = $CreateSolNetworkPackageOutput->Tags;

    # Returns a L<Paws::Tnb::CreateSolNetworkPackageOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/tnb/CreateSolNetworkPackage>

=head1 ATTRIBUTES


=head2 Tags => L<Paws::Tnb::TagMap>

A tag is a label that you assign to an Amazon Web Services resource.
Each tag consists of a key and an optional value. You can use tags to
search and filter your resources or track your Amazon Web Services
costs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSolNetworkPackage in L<Paws::Tnb>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

