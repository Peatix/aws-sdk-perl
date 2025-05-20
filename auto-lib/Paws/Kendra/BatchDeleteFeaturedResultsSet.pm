
package Paws::Kendra::BatchDeleteFeaturedResultsSet;
  use Moose;
  has FeaturedResultsSetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteFeaturedResultsSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::BatchDeleteFeaturedResultsSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::BatchDeleteFeaturedResultsSet - Arguments for method BatchDeleteFeaturedResultsSet on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteFeaturedResultsSet on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method BatchDeleteFeaturedResultsSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteFeaturedResultsSet.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $BatchDeleteFeaturedResultsSetResponse =
      $kendra->BatchDeleteFeaturedResultsSet(
      FeaturedResultsSetIds => [
        'MyFeaturedResultsSetId', ...    # min: 36, max: 36
      ],
      IndexId => 'MyIndexId',

      );

    # Results:
    my $Errors = $BatchDeleteFeaturedResultsSetResponse->Errors;

    # Returns a L<Paws::Kendra::BatchDeleteFeaturedResultsSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/BatchDeleteFeaturedResultsSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FeaturedResultsSetIds => ArrayRef[Str|Undef]

The identifiers of the featured results sets that you want to delete.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index used for featuring results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteFeaturedResultsSet in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

