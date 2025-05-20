
package Paws::MigrationHub::ListMigrationTaskUpdates;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has MigrationTaskName => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ProgressUpdateStream => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMigrationTaskUpdates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::ListMigrationTaskUpdatesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListMigrationTaskUpdates - Arguments for method ListMigrationTaskUpdates on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMigrationTaskUpdates on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method ListMigrationTaskUpdates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMigrationTaskUpdates.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $ListMigrationTaskUpdatesResult = $mgh->ListMigrationTaskUpdates(
      MigrationTaskName    => 'MyMigrationTaskName',
      ProgressUpdateStream => 'MyProgressUpdateStream',
      MaxResults           => 1,                          # OPTIONAL
      NextToken            => 'MyToken',                  # OPTIONAL
    );

    # Results:
    my $MigrationTaskUpdateList =
      $ListMigrationTaskUpdatesResult->MigrationTaskUpdateList;
    my $NextToken = $ListMigrationTaskUpdatesResult->NextToken;

    # Returns a L<Paws::MigrationHub::ListMigrationTaskUpdatesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgh/ListMigrationTaskUpdates>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the value that you specify here for C<MaxResults>,
the response will include a token that you can use to retrieve the next
set of results.



=head2 B<REQUIRED> MigrationTaskName => Str

A unique identifier that references the migration task. I<Do not
include sensitive data in this field.>



=head2 NextToken => Str

If C<NextToken> was returned by a previous call, there are more results
available. The value of C<NextToken> is a unique pagination token for
each page. To retrieve the next page of results, specify the
C<NextToken> value that the previous call returned. Keep all other
arguments unchanged. Each pagination token expires after 24 hours.
Using an expired pagination token will return an HTTP 400 InvalidToken
error.



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the progress-update stream, which is used for access
control as well as a namespace for migration-task names that is
implicitly linked to your AWS account. The progress-update stream must
uniquely identify the migration tool as it is used for all updates made
by the tool; however, it does not need to be unique for each AWS
account because it is scoped to the AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMigrationTaskUpdates in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

