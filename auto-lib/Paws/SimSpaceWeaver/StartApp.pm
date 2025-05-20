
package Paws::SimSpaceWeaver::StartApp;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Domain => (is => 'ro', isa => 'Str', required => 1);
  has LaunchOverrides => (is => 'ro', isa => 'Paws::SimSpaceWeaver::LaunchOverrides');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Simulation => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartApp');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startapp');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimSpaceWeaver::StartAppOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::StartApp - Arguments for method StartApp on L<Paws::SimSpaceWeaver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartApp on the
L<AWS SimSpace Weaver|Paws::SimSpaceWeaver> service. Use the attributes of this class
as arguments to method StartApp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartApp.

=head1 SYNOPSIS

    my $simspaceweaver = Paws->service('SimSpaceWeaver');
    my $StartAppOutput = $simspaceweaver->StartApp(
      Domain          => 'MySimSpaceWeaverResourceName',
      Name            => 'MySimSpaceWeaverResourceName',
      Simulation      => 'MySimSpaceWeaverResourceName',
      ClientToken     => 'MyClientToken',                  # OPTIONAL
      Description     => 'MyDescription',                  # OPTIONAL
      LaunchOverrides => {
        LaunchCommands => [
          'MyNonEmptyString', ...                          # min: 1, max: 1600
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Domain     = $StartAppOutput->Domain;
    my $Name       = $StartAppOutput->Name;
    my $Simulation = $StartAppOutput->Simulation;

    # Returns a L<Paws::SimSpaceWeaver::StartAppOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/simspaceweaver/StartApp>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A value that you provide to ensure that repeated calls to this API
operation using the same parameters complete only once. A
C<ClientToken> is also known as an I<idempotency token>. A
C<ClientToken> expires after 24 hours.



=head2 Description => Str

The description of the app.



=head2 B<REQUIRED> Domain => Str

The name of the domain of the app.



=head2 LaunchOverrides => L<Paws::SimSpaceWeaver::LaunchOverrides>





=head2 B<REQUIRED> Name => Str

The name of the app.



=head2 B<REQUIRED> Simulation => Str

The name of the simulation of the app.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartApp in L<Paws::SimSpaceWeaver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

