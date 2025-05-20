
package Paws::QApps::AssociateLibraryItemReview;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'instance-id', required => 1);
  has LibraryItemId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'libraryItemId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateLibraryItemReview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/catalog.associateItemRating');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QApps::AssociateLibraryItemReview - Arguments for method AssociateLibraryItemReview on L<Paws::QApps>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateLibraryItemReview on the
L<QApps|Paws::QApps> service. Use the attributes of this class
as arguments to method AssociateLibraryItemReview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateLibraryItemReview.

=head1 SYNOPSIS

    my $data.qapps = Paws->service('QApps');
    $data . qapps->AssociateLibraryItemReview(
      InstanceId    => 'MyInstanceId',
      LibraryItemId => 'MyUUID',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.qapps/AssociateLibraryItemReview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The unique identifier for the Amazon Q Business application environment
instance.



=head2 B<REQUIRED> LibraryItemId => Str

The unique identifier of the library item to associate the review with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateLibraryItemReview in L<Paws::QApps>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

