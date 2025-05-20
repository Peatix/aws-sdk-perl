
package Paws::Rekognition::ListProjectPolicies;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ProjectArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjectPolicies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListProjectPoliciesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListProjectPolicies - Arguments for method ListProjectPolicies on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjectPolicies on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method ListProjectPolicies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjectPolicies.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $ListProjectPoliciesResponse = $rekognition->ListProjectPolicies(
      ProjectArn => 'MyProjectArn',
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyExtendedPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken       = $ListProjectPoliciesResponse->NextToken;
    my $ProjectPolicies = $ListProjectPoliciesResponse->ProjectPolicies;

    # Returns a L<Paws::Rekognition::ListProjectPoliciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/ListProjectPolicies>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 5. If you specify a value greater than 5, a
ValidationException error occurs. The default value is 5.



=head2 NextToken => Str

If the previous response was incomplete (because there is more results
to retrieve), Amazon Rekognition Custom Labels returns a pagination
token in the response. You can use this pagination token to retrieve
the next set of results.



=head2 B<REQUIRED> ProjectArn => Str

The ARN of the project for which you want to list the project policies.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjectPolicies in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

