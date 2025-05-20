
package Paws::DataZone::GetEnvironmentAction;
  use Moose;
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironmentAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::GetEnvironmentActionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetEnvironmentAction - Arguments for method GetEnvironmentAction on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironmentAction on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method GetEnvironmentAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironmentAction.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $GetEnvironmentActionOutput = $datazone->GetEnvironmentAction(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Identifier            => 'MyString',

    );

    # Results:
    my $Description   = $GetEnvironmentActionOutput->Description;
    my $DomainId      = $GetEnvironmentActionOutput->DomainId;
    my $EnvironmentId = $GetEnvironmentActionOutput->EnvironmentId;
    my $Id            = $GetEnvironmentActionOutput->Id;
    my $Name          = $GetEnvironmentActionOutput->Name;
    my $Parameters    = $GetEnvironmentActionOutput->Parameters;

    # Returns a L<Paws::DataZone::GetEnvironmentActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/GetEnvironmentAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainIdentifier => Str

The ID of the Amazon DataZone domain in which the
C<GetEnvironmentAction> API is invoked.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The environment ID of the environment action.



=head2 B<REQUIRED> Identifier => Str

The ID of the environment action




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironmentAction in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

