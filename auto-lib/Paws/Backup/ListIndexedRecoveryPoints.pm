
package Paws::Backup::ListIndexedRecoveryPoints;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has CreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has IndexStatus => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'indexStatus');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'resourceType');
  has SourceResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceResourceArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIndexedRecoveryPoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indexes/recovery-point/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Backup::ListIndexedRecoveryPointsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Backup::ListIndexedRecoveryPoints - Arguments for method ListIndexedRecoveryPoints on L<Paws::Backup>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIndexedRecoveryPoints on the
L<AWS Backup|Paws::Backup> service. Use the attributes of this class
as arguments to method ListIndexedRecoveryPoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIndexedRecoveryPoints.

=head1 SYNOPSIS

    my $backup = Paws->service('Backup');
    my $ListIndexedRecoveryPointsOutput = $backup->ListIndexedRecoveryPoints(
      CreatedAfter      => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore     => '1970-01-01T01:00:00',    # OPTIONAL
      IndexStatus       => 'PENDING',                # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'Mystring',               # OPTIONAL
      ResourceType      => 'MyResourceType',         # OPTIONAL
      SourceResourceArn => 'MyARN',                  # OPTIONAL
    );

    # Results:
    my $IndexedRecoveryPoints =
      $ListIndexedRecoveryPointsOutput->IndexedRecoveryPoints;
    my $NextToken = $ListIndexedRecoveryPointsOutput->NextToken;

    # Returns a L<Paws::Backup::ListIndexedRecoveryPointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup/ListIndexedRecoveryPoints>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

Returns only indexed recovery points that were created after the
specified date.



=head2 CreatedBefore => Str

Returns only indexed recovery points that were created before the
specified date.



=head2 IndexStatus => Str

Include this parameter to filter the returned list by the indicated
statuses.

Accepted values: C<PENDING> | C<ACTIVE> | C<FAILED> | C<DELETING>

A recovery point with an index that has the status of C<ACTIVE> can be
included in a search.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">

=head2 MaxResults => Int

The maximum number of resource list items to be returned.



=head2 NextToken => Str

The next item following a partial list of returned recovery points.

For example, if a request is made to return C<MaxResults> number of
indexed recovery points, C<NextToken> allows you to return more items
in your list starting at the location pointed to by the next token.



=head2 ResourceType => Str

Returns a list of indexed recovery points for the specified resource
type(s).

Accepted values include:

=over

=item *

C<EBS> for Amazon Elastic Block Store

=item *

C<S3> for Amazon Simple Storage Service (Amazon S3)

=back




=head2 SourceResourceArn => Str

A string of the Amazon Resource Name (ARN) that uniquely identifies the
source resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIndexedRecoveryPoints in L<Paws::Backup>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

