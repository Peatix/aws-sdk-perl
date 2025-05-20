
package Paws::Kendra::ListExperienceEntities;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExperienceEntities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::ListExperienceEntitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::ListExperienceEntities - Arguments for method ListExperienceEntities on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExperienceEntities on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method ListExperienceEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExperienceEntities.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $ListExperienceEntitiesResponse = $kendra->ListExperienceEntities(
      Id        => 'MyExperienceId',
      IndexId   => 'MyIndexId',
      NextToken => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListExperienceEntitiesResponse->NextToken;
    my $SummaryItems = $ListExperienceEntitiesResponse->SummaryItems;

    # Returns a L<Paws::Kendra::ListExperienceEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/ListExperienceEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Kendra returns a pagination token in the response.
You can use this pagination token to retrieve the next set of users or
groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExperienceEntities in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

