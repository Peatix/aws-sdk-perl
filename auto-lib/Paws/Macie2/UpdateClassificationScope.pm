
package Paws::Macie2::UpdateClassificationScope;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has S3 => (is => 'ro', isa => 'Paws::Macie2::S3ClassificationScopeUpdate', traits => ['NameInRequest'], request_name => 's3');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateClassificationScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/classification-scopes/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateClassificationScopeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateClassificationScope - Arguments for method UpdateClassificationScope on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClassificationScope on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateClassificationScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClassificationScope.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateClassificationScopeResponse = $macie2->UpdateClassificationScope(
      Id => 'My__string',
      S3 => {
        Excludes => {
          BucketNames => [ 'MyS3BucketName', ... ],
          Operation   => 'ADD',    # values: ADD, REPLACE, REMOVE

        },

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateClassificationScope>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource that the request
applies to.



=head2 S3 => L<Paws::Macie2::S3ClassificationScopeUpdate>

The S3 buckets to add or remove from the exclusion list defined by the
classification scope.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClassificationScope in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

