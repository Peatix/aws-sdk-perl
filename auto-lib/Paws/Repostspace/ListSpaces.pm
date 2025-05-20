
package Paws::Repostspace::ListSpaces;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSpaces');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/spaces');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Repostspace::ListSpacesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Repostspace::ListSpaces - Arguments for method ListSpaces on L<Paws::Repostspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSpaces on the
L<AWS re:Post Private|Paws::Repostspace> service. Use the attributes of this class
as arguments to method ListSpaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSpaces.

=head1 SYNOPSIS

    my $repostspace = Paws->service('Repostspace');
    my $ListSpacesOutput = $repostspace->ListSpaces(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSpacesOutput->NextToken;
    my $Spaces    = $ListSpacesOutput->Spaces;

    # Returns a L<Paws::Repostspace::ListSpacesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/repostspace/ListSpaces>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of private re:Posts to include in the results.



=head2 NextToken => Str

The token for the next set of private re:Posts to return. You receive
this token from a previous ListSpaces operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSpaces in L<Paws::Repostspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

