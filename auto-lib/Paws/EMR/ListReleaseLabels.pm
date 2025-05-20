
package Paws::EMR::ListReleaseLabels;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::EMR::ReleaseLabelFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReleaseLabels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListReleaseLabelsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListReleaseLabels - Arguments for method ListReleaseLabels on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReleaseLabels on the
L<Amazon EMR|Paws::EMR> service. Use the attributes of this class
as arguments to method ListReleaseLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReleaseLabels.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListReleaseLabelsOutput = $elasticmapreduce->ListReleaseLabels(
      Filters => {
        Application => 'MyString',    # OPTIONAL
        Prefix      => 'MyString',    # OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListReleaseLabelsOutput->NextToken;
    my $ReleaseLabels = $ListReleaseLabelsOutput->ReleaseLabels;

    # Returns a L<Paws::EMR::ListReleaseLabelsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListReleaseLabels>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::EMR::ReleaseLabelFilter>

Filters the results of the request. C<Prefix> specifies the prefix of
release labels to return. C<Application> specifies the application
(with/without version) of release labels to return.



=head2 MaxResults => Int

Defines the maximum number of release labels to return in a single
response. The default is C<100>.



=head2 NextToken => Str

Specifies the next page of results. If C<NextToken> is not specified,
which is usually the case for the first request of ListReleaseLabels,
the first page of results are determined by other filtering parameters
or by the latest version. The C<ListReleaseLabels> request fails if the
identity (Amazon Web Services account ID) and all filtering parameters
are different from the original request, or if the C<NextToken> is
expired or tampered with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReleaseLabels in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

