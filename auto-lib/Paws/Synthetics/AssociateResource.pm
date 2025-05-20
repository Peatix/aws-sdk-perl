
package Paws::Synthetics::AssociateResource;
  use Moose;
  has GroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'groupIdentifier', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/group/{groupIdentifier}/associate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::AssociateResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::AssociateResource - Arguments for method AssociateResource on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResource on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method AssociateResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResource.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $AssociateResourceResponse = $synthetics->AssociateResource(
      GroupIdentifier => 'MyGroupIdentifier',
      ResourceArn     => 'MyCanaryArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/AssociateResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupIdentifier => Str

Specifies the group. You can specify the group name, the ARN, or the
group ID as the C<GroupIdentifier>.



=head2 B<REQUIRED> ResourceArn => Str

The ARN of the canary that you want to associate with the specified
group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResource in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

