
package Paws::Macie2::DeleteAllowList;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has IgnoreJobChecks => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ignoreJobChecks');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAllowList');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/allow-lists/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::DeleteAllowListResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DeleteAllowList - Arguments for method DeleteAllowList on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAllowList on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method DeleteAllowList.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAllowList.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $DeleteAllowListResponse = $macie2->DeleteAllowList(
      Id              => 'My__string',
      IgnoreJobChecks => 'My__string',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/DeleteAllowList>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.



=head2 IgnoreJobChecks => Str

Specifies whether to force deletion of the allow list, even if active
classification jobs are configured to use the list.

When you try to delete an allow list, Amazon Macie checks for
classification jobs that use the list and have a status other than
COMPLETE or CANCELLED. By default, Macie rejects your request if any
jobs meet these criteria. To skip these checks and delete the list, set
this value to true. To delete the list only if no active jobs are
configured to use it, set this value to false.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAllowList in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

