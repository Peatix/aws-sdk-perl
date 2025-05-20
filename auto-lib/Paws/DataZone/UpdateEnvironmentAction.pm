
package Paws::DataZone::UpdateEnvironmentAction;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'domainIdentifier', required => 1);
  has EnvironmentIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentIdentifier', required => 1);
  has Identifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'identifier', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Parameters => (is => 'ro', isa => 'Paws::DataZone::ActionParameters', traits => ['NameInRequest'], request_name => 'parameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironmentAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataZone::UpdateEnvironmentActionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::UpdateEnvironmentAction - Arguments for method UpdateEnvironmentAction on L<Paws::DataZone>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironmentAction on the
L<Amazon DataZone|Paws::DataZone> service. Use the attributes of this class
as arguments to method UpdateEnvironmentAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironmentAction.

=head1 SYNOPSIS

    my $datazone = Paws->service('DataZone');
    my $UpdateEnvironmentActionOutput = $datazone->UpdateEnvironmentAction(
      DomainIdentifier      => 'MyDomainId',
      EnvironmentIdentifier => 'MyEnvironmentId',
      Identifier            => 'MyString',
      Description           => 'MyString',          # OPTIONAL
      Name                  => 'MyString',          # OPTIONAL
      Parameters            => {
        AwsConsoleLink => { Uri => 'MyString', },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Description   = $UpdateEnvironmentActionOutput->Description;
    my $DomainId      = $UpdateEnvironmentActionOutput->DomainId;
    my $EnvironmentId = $UpdateEnvironmentActionOutput->EnvironmentId;
    my $Id            = $UpdateEnvironmentActionOutput->Id;
    my $Name          = $UpdateEnvironmentActionOutput->Name;
    my $Parameters    = $UpdateEnvironmentActionOutput->Parameters;

    # Returns a L<Paws::DataZone::UpdateEnvironmentActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/datazone/UpdateEnvironmentAction>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the environment action.



=head2 B<REQUIRED> DomainIdentifier => Str

The domain ID of the environment action.



=head2 B<REQUIRED> EnvironmentIdentifier => Str

The environment ID of the environment action.



=head2 B<REQUIRED> Identifier => Str

The ID of the environment action.



=head2 Name => Str

The name of the environment action.



=head2 Parameters => L<Paws::DataZone::ActionParameters>

The parameters of the environment action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironmentAction in L<Paws::DataZone>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

