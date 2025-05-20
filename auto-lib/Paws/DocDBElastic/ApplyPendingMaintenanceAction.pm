
package Paws::DocDBElastic::ApplyPendingMaintenanceAction;
  use Moose;
  has ApplyAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applyAction', required => 1);
  has ApplyOn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applyOn');
  has OptInType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'optInType', required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplyPendingMaintenanceAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/pending-action');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDBElastic::ApplyPendingMaintenanceActionOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDBElastic::ApplyPendingMaintenanceAction - Arguments for method ApplyPendingMaintenanceAction on L<Paws::DocDBElastic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyPendingMaintenanceAction on the
L<Amazon DocumentDB Elastic Clusters|Paws::DocDBElastic> service. Use the attributes of this class
as arguments to method ApplyPendingMaintenanceAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyPendingMaintenanceAction.

=head1 SYNOPSIS

    my $docdb-elastic = Paws->service('DocDBElastic');
    my $ApplyPendingMaintenanceActionOutput =
      $docdb -elastic->ApplyPendingMaintenanceAction(
      ApplyAction => 'MyInputString',
      OptInType   => 'IMMEDIATE',
      ResourceArn => 'MyInputString',
      ApplyOn     => 'MyInputString',    # OPTIONAL
      );

    # Results:
    my $ResourcePendingMaintenanceAction =
      $ApplyPendingMaintenanceActionOutput->ResourcePendingMaintenanceAction;

  # Returns a L<Paws::DocDBElastic::ApplyPendingMaintenanceActionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/docdb-elastic/ApplyPendingMaintenanceAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyAction => Str

The pending maintenance action to apply to the resource.

Valid actions are:

=over

=item *

C<ENGINE_UPDATEI< >>

=item *

C<ENGINE_UPGRADE>

=item *

C<SECURITY_UPDATE>

=item *

C<OS_UPDATE>

=item *

C<MASTER_USER_PASSWORD_UPDATE>

=back




=head2 ApplyOn => Str

A specific date to apply the pending maintenance action. Required if
opt-in-type is C<APPLY_ON>. Format: C<yyyy/MM/dd HH:mm-yyyy/MM/dd
HH:mm>



=head2 B<REQUIRED> OptInType => Str

A value that specifies the type of opt-in request, or undoes an opt-in
request. An opt-in request of type C<IMMEDIATE> can't be undone.

Valid values are: C<"IMMEDIATE">, C<"NEXT_MAINTENANCE">, C<"APPLY_ON">, C<"UNDO_OPT_IN">

=head2 B<REQUIRED> ResourceArn => Str

The Amazon DocumentDB Amazon Resource Name (ARN) of the resource to
which the pending maintenance action applies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyPendingMaintenanceAction in L<Paws::DocDBElastic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

