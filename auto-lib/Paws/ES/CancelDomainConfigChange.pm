
package Paws::ES::CancelDomainConfigChange;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelDomainConfigChange');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain/{DomainName}/config/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::CancelDomainConfigChangeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::CancelDomainConfigChange - Arguments for method CancelDomainConfigChange on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelDomainConfigChange on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method CancelDomainConfigChange.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelDomainConfigChange.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $CancelDomainConfigChangeResponse = $es->CancelDomainConfigChange(
      DomainName => 'MyDomainName',
      DryRun     => 1,                # OPTIONAL
    );

    # Results:
    my $CancelledChangeIds =
      $CancelDomainConfigChangeResponse->CancelledChangeIds;
    my $CancelledChangeProperties =
      $CancelDomainConfigChangeResponse->CancelledChangeProperties;
    my $DryRun = $CancelDomainConfigChangeResponse->DryRun;

    # Returns a L<Paws::ES::CancelDomainConfigChangeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

Name of the OpenSearch Service domain configuration request to cancel.



=head2 DryRun => Bool

When set to B<True>, returns the list of change IDs and properties that
will be cancelled without actually cancelling the change.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelDomainConfigChange in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

