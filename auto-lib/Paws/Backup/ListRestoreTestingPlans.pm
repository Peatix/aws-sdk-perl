
package Paws::Backup::ListRestoreTestingPlans;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRestoreTestingPlans');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restore-testing/plans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListRestoreTestingPlansOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListRestoreTestingPlans - Arguments for method ListRestoreTestingPlans on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRestoreTestingPlans on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListRestoreTestingPlans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRestoreTestingPlans.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListRestoreTestingPlansOutput = $backup->ListRestoreTestingPlans(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRestoreTestingPlansOutput->NextToken;
    my $RestoreTestingPlans =
      $ListRestoreTestingPlansOutput->RestoreTestingPlans;

    # Returns a L<Paws::Backup::ListRestoreTestingPlansOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListRestoreTestingPlans>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<MaxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the nexttoken.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRestoreTestingPlans in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

