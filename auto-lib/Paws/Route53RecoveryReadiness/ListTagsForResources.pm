
package Paws::Route53RecoveryReadiness::ListTagsForResources;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resource-arn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resource-arn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryReadiness::ListTagsForResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::ListTagsForResources - Arguments for method ListTagsForResources on L<Paws::Route53RecoveryReadiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResources on the
L<AWS Route53 Recovery Readiness|Paws::Route53RecoveryReadiness> service. Use the attributes of this class
as arguments to method ListTagsForResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResources.

=head1 SYNOPSIS

    my $route53-recovery-readiness = Paws->service('Route53RecoveryReadiness');
    my $ListTagsForResourcesResponse =
      $route53 -recovery-readiness->ListTagsForResources(
      ResourceArn => 'My__string',

      );

    # Results:
    my $Tags = $ListTagsForResourcesResponse->Tags;

# Returns a L<Paws::Route53RecoveryReadiness::ListTagsForResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-readiness/ListTagsForResources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) for a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResources in L<Paws::Route53RecoveryReadiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

