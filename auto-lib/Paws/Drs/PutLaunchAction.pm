
package Paws::Drs::PutLaunchAction;
  use Moose;
  has ActionCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionCode', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId', required => 1);
  has ActionVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionVersion', required => 1);
  has Active => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'active', required => 1);
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Optional => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'optional', required => 1);
  has Order => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'order', required => 1);
  has Parameters => (is => 'ro', isa => 'Paws::Drs::LaunchActionParameters', traits => ['NameInRequest'], request_name => 'parameters');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutLaunchAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/PutLaunchAction');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Drs::PutLaunchActionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Drs::PutLaunchAction - Arguments for method PutLaunchAction on L<Paws::Drs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutLaunchAction on the
L<Elastic Disaster Recovery Service|Paws::Drs> service. Use the attributes of this class
as arguments to method PutLaunchAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutLaunchAction.

=head1 SYNOPSIS

    my $drs = Paws->service('Drs');
    my $PutLaunchActionResponse = $drs->PutLaunchAction(
      ActionCode    => 'MySsmDocumentName',
      ActionId      => 'MyLaunchActionId',
      ActionVersion => 'MyLaunchActionVersion',
      Active        => 1,
      Category      => 'MONITORING',
      Description   => 'MyLaunchActionDescription',
      Name          => 'MyLaunchActionName',
      Optional      => 1,
      Order         => 1,
      ResourceId    => 'MyLaunchActionResourceId',
      Parameters    => {
        'MyLaunchActionParameterName' => {
          Type  => 'SSM_STORE',    # values: SSM_STORE, DYNAMIC; OPTIONAL
          Value => 'MyLaunchActionParameterValue', # min: 1, max: 1011; OPTIONAL
        },    # key: min: 1, max: 1011
      },    # OPTIONAL
    );

    # Results:
    my $ActionCode    = $PutLaunchActionResponse->ActionCode;
    my $ActionId      = $PutLaunchActionResponse->ActionId;
    my $ActionVersion = $PutLaunchActionResponse->ActionVersion;
    my $Active        = $PutLaunchActionResponse->Active;
    my $Category      = $PutLaunchActionResponse->Category;
    my $Description   = $PutLaunchActionResponse->Description;
    my $Name          = $PutLaunchActionResponse->Name;
    my $Optional      = $PutLaunchActionResponse->Optional;
    my $Order         = $PutLaunchActionResponse->Order;
    my $Parameters    = $PutLaunchActionResponse->Parameters;
    my $ResourceId    = $PutLaunchActionResponse->ResourceId;
    my $Type          = $PutLaunchActionResponse->Type;

    # Returns a L<Paws::Drs::PutLaunchActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/drs/PutLaunchAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionCode => Str

Launch action code.



=head2 B<REQUIRED> ActionId => Str





=head2 B<REQUIRED> ActionVersion => Str





=head2 B<REQUIRED> Active => Bool

Whether the launch action is active.



=head2 B<REQUIRED> Category => Str



Valid values are: C<"MONITORING">, C<"VALIDATION">, C<"CONFIGURATION">, C<"SECURITY">, C<"OTHER">

=head2 B<REQUIRED> Description => Str





=head2 B<REQUIRED> Name => Str





=head2 B<REQUIRED> Optional => Bool

Whether the launch will not be marked as failed if this action fails.



=head2 B<REQUIRED> Order => Int





=head2 Parameters => L<Paws::Drs::LaunchActionParameters>





=head2 B<REQUIRED> ResourceId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutLaunchAction in L<Paws::Drs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

