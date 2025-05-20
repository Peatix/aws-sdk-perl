
package Paws::Personalize::ListRecommenders;
  use Moose;
  has DatasetGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datasetGroupArn' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRecommenders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::ListRecommendersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListRecommenders - Arguments for method ListRecommenders on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRecommenders on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method ListRecommenders.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRecommenders.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $ListRecommendersResponse = $personalize->ListRecommenders(
      DatasetGroupArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListRecommendersResponse->NextToken;
    my $Recommenders = $ListRecommendersResponse->Recommenders;

    # Returns a L<Paws::Personalize::ListRecommendersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/ListRecommenders>

=head1 ATTRIBUTES


=head2 DatasetGroupArn => Str

The Amazon Resource Name (ARN) of the Domain dataset group to list the
recommenders for. When a Domain dataset group is not specified, all the
recommenders associated with the account are listed.



=head2 MaxResults => Int

The maximum number of recommenders to return.



=head2 NextToken => Str

A token returned from the previous call to C<ListRecommenders> for
getting the next set of recommenders (if they exist).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRecommenders in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

