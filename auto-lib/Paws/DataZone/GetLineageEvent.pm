
package Paws::DataZone::GetLineageEvent;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLineageEvent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/lineage/events/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetLineageEventOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetLineageEvent - Arguments for method GetLineageEvent on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLineageEvent on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetLineageEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLineageEvent.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetLineageEventOutput = $datazone->GetLineageEvent(
      DomainIdentifier => 'MyDomainId',
      Identifier       => 'MyLineageEventIdentifier',

    );

    # Results:
    my $CreatedAt        = $GetLineageEventOutput->CreatedAt;
    my $CreatedBy        = $GetLineageEventOutput->CreatedBy;
    my $DomainId         = $GetLineageEventOutput->DomainId;
    my $Event            = $GetLineageEventOutput->Event;
    my $EventTime        = $GetLineageEventOutput->EventTime;
    my $Id               = $GetLineageEventOutput->Id;
    my $ProcessingStatus = $GetLineageEventOutput->ProcessingStatus;

    # Returns a L<Paws::DataZone::GetLineageEventOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetLineageEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the domain.



=head2 B<REQUIRED> Identifier => Str

The ID of the lineage event.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLineageEvent in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

