
package Paws::SecurityHub::BatchUpdateStandardsControlAssociations;
  use Moose;
  has StandardsControlAssociationUpdates => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::StandardsControlAssociationUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateStandardsControlAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchUpdateStandardsControlAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchUpdateStandardsControlAssociations - Arguments for method BatchUpdateStandardsControlAssociations on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateStandardsControlAssociations on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchUpdateStandardsControlAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateStandardsControlAssociations.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchUpdateStandardsControlAssociationsResponse =
      $securityhub->BatchUpdateStandardsControlAssociations(
      StandardsControlAssociationUpdates => [
        {
          AssociationStatus => 'ENABLED',            # values: ENABLED, DISABLED
          SecurityControlId => 'MyNonEmptyString',
          StandardsArn      => 'MyNonEmptyString',
          UpdatedReason     => 'MyNonEmptyString',
        },
        ...
      ],

      );

    # Results:
    my $UnprocessedAssociationUpdates =
      $BatchUpdateStandardsControlAssociationsResponse
      ->UnprocessedAssociationUpdates;

# Returns a L<Paws::SecurityHub::BatchUpdateStandardsControlAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchUpdateStandardsControlAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StandardsControlAssociationUpdates => ArrayRef[L<Paws::SecurityHub::StandardsControlAssociationUpdate>]

Updates the enablement status of a security control in a specified
standard.

Calls to this operation return a C<RESOURCE_NOT_FOUND_EXCEPTION> error
when the standard subscription for the control has
C<StandardsControlsUpdatable> value C<NOT_READY_FOR_UPDATES>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateStandardsControlAssociations in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

