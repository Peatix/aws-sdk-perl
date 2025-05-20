
package Paws::DataExchange::RevokeRevision;
  use Moose;
  has DataSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DataSetId', required => 1);
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RevisionId', required => 1);
  has RevocationComment => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RevokeRevision');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DataExchange::RevokeRevisionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataExchange::RevokeRevision - Arguments for method RevokeRevision on L<Paws::DataExchange>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RevokeRevision on the
L<AWS Data Exchange|Paws::DataExchange> service. Use the attributes of this class
as arguments to method RevokeRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RevokeRevision.

=head1 SYNOPSIS

    my $dataexchange = Paws->service('DataExchange');
    my $RevokeRevisionResponse = $dataexchange->RevokeRevision(
      DataSetId         => 'My__string',
      RevisionId        => 'My__string',
      RevocationComment => 'My__stringMin10Max512',

    );

    # Results:
    my $Arn               = $RevokeRevisionResponse->Arn;
    my $Comment           = $RevokeRevisionResponse->Comment;
    my $CreatedAt         = $RevokeRevisionResponse->CreatedAt;
    my $DataSetId         = $RevokeRevisionResponse->DataSetId;
    my $Finalized         = $RevokeRevisionResponse->Finalized;
    my $Id                = $RevokeRevisionResponse->Id;
    my $RevocationComment = $RevokeRevisionResponse->RevocationComment;
    my $Revoked           = $RevokeRevisionResponse->Revoked;
    my $RevokedAt         = $RevokeRevisionResponse->RevokedAt;
    my $SourceId          = $RevokeRevisionResponse->SourceId;
    my $UpdatedAt         = $RevokeRevisionResponse->UpdatedAt;

    # Returns a L<Paws::DataExchange::RevokeRevisionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dataexchange/RevokeRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSetId => Str

The unique identifier for a data set.



=head2 B<REQUIRED> RevisionId => Str

The unique identifier for a revision.



=head2 B<REQUIRED> RevocationComment => Str

A required comment to inform subscribers of the reason their access to
the revision was revoked.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RevokeRevision in L<Paws::DataExchange>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

