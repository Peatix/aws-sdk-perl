
package Paws::Resiliencehub::BatchUpdateRecommendationStatus;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has RequestEntries => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::UpdateRecommendationStatusRequestEntry]', traits => ['NameInRequest'], request_name => 'requestEntries', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateRecommendationStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/batch-update-recommendation-status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::BatchUpdateRecommendationStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::BatchUpdateRecommendationStatus - Arguments for method BatchUpdateRecommendationStatus on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateRecommendationStatus on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method BatchUpdateRecommendationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateRecommendationStatus.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $BatchUpdateRecommendationStatusResponse =
      $resiliencehub->BatchUpdateRecommendationStatus(
      AppArn         => 'MyArn',
      RequestEntries => [
        {
          EntryId        => 'MyString255',          # min: 1, max: 255
          Excluded       => 1,
          ReferenceId    => 'MySpecReferenceId',    # min: 1, max: 500
          AppComponentId => 'MyEntityName255',      # OPTIONAL
          ExcludeReason  => 'AlreadyImplemented'
          , # values: AlreadyImplemented, NotRelevant, ComplexityOfImplementation; OPTIONAL
          Item => {
            ResourceId      => 'MyString500',     # min: 1, max: 500; OPTIONAL
            TargetAccountId => 'MyCustomerId',    # OPTIONAL
            TargetRegion    => 'MyAwsRegion',     # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $AppArn        = $BatchUpdateRecommendationStatusResponse->AppArn;
    my $FailedEntries = $BatchUpdateRecommendationStatusResponse->FailedEntries;
    my $SuccessfulEntries =
      $BatchUpdateRecommendationStatusResponse->SuccessfulEntries;

# Returns a L<Paws::Resiliencehub::BatchUpdateRecommendationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/BatchUpdateRecommendationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> RequestEntries => ArrayRef[L<Paws::Resiliencehub::UpdateRecommendationStatusRequestEntry>]

Defines the list of operational recommendations that need to be
included or excluded.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateRecommendationStatus in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

