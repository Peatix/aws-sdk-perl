
package Paws::OAM::ListAttachedLinks;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SinkIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttachedLinks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListAttachedLinks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OAM::ListAttachedLinksOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OAM::ListAttachedLinks - Arguments for method ListAttachedLinks on L<Paws::OAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachedLinks on the
L<CloudWatch Observability Access Manager|Paws::OAM> service. Use the attributes of this class
as arguments to method ListAttachedLinks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachedLinks.

=head1 SYNOPSIS

    my $oam = Paws->service('OAM');
    my $ListAttachedLinksOutput = $oam->ListAttachedLinks(
      SinkIdentifier => 'MyResourceIdentifier',
      MaxResults     => 1,                        # OPTIONAL
      NextToken      => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $Items     = $ListAttachedLinksOutput->Items;
    my $NextToken = $ListAttachedLinksOutput->NextToken;

    # Returns a L<Paws::OAM::ListAttachedLinksOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/oam/ListAttachedLinks>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Limits the number of returned links to the specified number.



=head2 NextToken => Str

The token for the next set of items to return. You received this token
from a previous call.



=head2 B<REQUIRED> SinkIdentifier => Str

The ARN of the sink that you want to retrieve links for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachedLinks in L<Paws::OAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

