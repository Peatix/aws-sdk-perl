
package Paws::Transcribe::DeleteCallAnalyticsCategory;
  use Moose;
  has CategoryName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCallAnalyticsCategory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::DeleteCallAnalyticsCategoryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::DeleteCallAnalyticsCategory - Arguments for method DeleteCallAnalyticsCategory on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCallAnalyticsCategory on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method DeleteCallAnalyticsCategory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCallAnalyticsCategory.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $DeleteCallAnalyticsCategoryResponse =
      $transcribe->DeleteCallAnalyticsCategory(
      CategoryName => 'MyCategoryName',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/DeleteCallAnalyticsCategory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CategoryName => Str

The name of the Call Analytics category you want to delete. Category
names are case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCallAnalyticsCategory in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

