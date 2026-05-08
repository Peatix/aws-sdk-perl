package Paws::AmplifyUIBuilder;
  use Moose;
  sub service { 'amplifyuibuilder' }
  sub signing_name { 'amplifyuibuilder' }
  sub version { '2021-08-11' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::CreateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::CreateForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::CreateTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::DeleteComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::DeleteForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::DeleteTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExchangeCodeForToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ExchangeCodeForToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ExportComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportForms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ExportForms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ExportThemes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ExportThemes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCodegenJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::GetCodegenJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::GetComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::GetForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMetadata {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::GetMetadata', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::GetTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCodegenJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ListCodegenJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComponents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ListComponents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListForms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ListForms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThemes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::ListThemes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutMetadataFlag {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::PutMetadataFlag', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RefreshToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::RefreshToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartCodegenJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::StartCodegenJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateComponent {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::UpdateComponent', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateForm {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::UpdateForm', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateTheme {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::AmplifyUIBuilder::UpdateTheme', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ExportAllComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ExportComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ExportComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ExportComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ExportAllForms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ExportForms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ExportForms(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ExportForms(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ExportAllThemes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ExportThemes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ExportThemes(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ExportThemes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ListAllCodegenJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCodegenJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListCodegenJobs(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ListCodegenJobs(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ListAllComponents {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListComponents(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListComponents(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ListComponents(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ListAllForms {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListForms(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListForms(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ListForms(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }
  sub ListAllThemes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListThemes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->nextToken) {
        $next_result = $self->ListThemes(@_, nextToken => $next_result->nextToken);
        push @{ $result->entities }, @{ $next_result->entities };
      }
      return $result;
    } else {
      while ($result->nextToken) {
        $callback->($_ => 'entities') foreach (@{ $result->entities });
        $result = $self->ListThemes(@_, nextToken => $result->nextToken);
      }
      $callback->($_ => 'entities') foreach (@{ $result->entities });
    }

    return undef
  }


  sub operations { qw/CreateComponent CreateForm CreateTheme DeleteComponent DeleteForm DeleteTheme ExchangeCodeForToken ExportComponents ExportForms ExportThemes GetCodegenJob GetComponent GetForm GetMetadata GetTheme ListCodegenJobs ListComponents ListForms ListTagsForResource ListThemes PutMetadataFlag RefreshToken StartCodegenJob TagResource UntagResource UpdateComponent UpdateForm UpdateTheme / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AmplifyUIBuilder - Perl Interface to AWS AWS Amplify UI Builder

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('AmplifyUIBuilder');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The Amplify UI Builder API provides a programmatic interface for
creating and configuring user interface (UI) component libraries and
themes for use in your Amplify applications. You can then connect these
UI components to an application's backend Amazon Web Services
resources.

You can also use the Amplify Studio visual designer to create UI
components and model data for an app. For more information, see
Introduction (https://docs.amplify.aws/console/adminui/intro) in the
I<Amplify Docs>.

The Amplify Framework is a comprehensive set of SDKs, libraries, tools,
and documentation for client app development. For more information, see
the Amplify Framework (https://docs.amplify.aws/). For more information
about deploying an Amplify application to Amazon Web Services, see the
Amplify User Guide
(https://docs.aws.amazon.com/amplify/latest/userguide/welcome.html).

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 CreateComponent

=over

=item AppId => Str

=item ComponentToCreate => L<Paws::AmplifyUIBuilder::CreateComponentData>

=item EnvironmentName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::CreateComponent>

Returns: a L<Paws::AmplifyUIBuilder::CreateComponentResponse> instance

Creates a new component for an Amplify app.


=head2 CreateForm

=over

=item AppId => Str

=item EnvironmentName => Str

=item FormToCreate => L<Paws::AmplifyUIBuilder::CreateFormData>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::CreateForm>

Returns: a L<Paws::AmplifyUIBuilder::CreateFormResponse> instance

Creates a new form for an Amplify app.


=head2 CreateTheme

=over

=item AppId => Str

=item EnvironmentName => Str

=item ThemeToCreate => L<Paws::AmplifyUIBuilder::CreateThemeData>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::CreateTheme>

Returns: a L<Paws::AmplifyUIBuilder::CreateThemeResponse> instance

Creates a theme to apply to the components in an Amplify app.


=head2 DeleteComponent

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::DeleteComponent>

Returns: nothing

Deletes a component from an Amplify app.


=head2 DeleteForm

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::DeleteForm>

Returns: nothing

Deletes a form from an Amplify app.


=head2 DeleteTheme

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::DeleteTheme>

Returns: nothing

Deletes a theme from an Amplify app.


=head2 ExchangeCodeForToken

=over

=item Provider => Str

=item Request => L<Paws::AmplifyUIBuilder::ExchangeCodeForTokenRequestBody>


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ExchangeCodeForToken>

Returns: a L<Paws::AmplifyUIBuilder::ExchangeCodeForTokenResponse> instance

This is for internal use.

Amplify uses this action to exchange an access code for a token.


=head2 ExportComponents

=over

=item AppId => Str

=item EnvironmentName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ExportComponents>

Returns: a L<Paws::AmplifyUIBuilder::ExportComponentsResponse> instance

Exports component configurations to code that is ready to integrate
into an Amplify app.


=head2 ExportForms

=over

=item AppId => Str

=item EnvironmentName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ExportForms>

Returns: a L<Paws::AmplifyUIBuilder::ExportFormsResponse> instance

Exports form configurations to code that is ready to integrate into an
Amplify app.


=head2 ExportThemes

=over

=item AppId => Str

=item EnvironmentName => Str

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ExportThemes>

Returns: a L<Paws::AmplifyUIBuilder::ExportThemesResponse> instance

Exports theme configurations to code that is ready to integrate into an
Amplify app.


=head2 GetCodegenJob

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::GetCodegenJob>

Returns: a L<Paws::AmplifyUIBuilder::GetCodegenJobResponse> instance

Returns an existing code generation job.


=head2 GetComponent

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::GetComponent>

Returns: a L<Paws::AmplifyUIBuilder::GetComponentResponse> instance

Returns an existing component for an Amplify app.


=head2 GetForm

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::GetForm>

Returns: a L<Paws::AmplifyUIBuilder::GetFormResponse> instance

Returns an existing form for an Amplify app.


=head2 GetMetadata

=over

=item AppId => Str

=item EnvironmentName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::GetMetadata>

Returns: a L<Paws::AmplifyUIBuilder::GetMetadataResponse> instance

Returns existing metadata for an Amplify app.


=head2 GetTheme

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::GetTheme>

Returns: a L<Paws::AmplifyUIBuilder::GetThemeResponse> instance

Returns an existing theme for an Amplify app.


=head2 ListCodegenJobs

=over

=item AppId => Str

=item EnvironmentName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ListCodegenJobs>

Returns: a L<Paws::AmplifyUIBuilder::ListCodegenJobsResponse> instance

Retrieves a list of code generation jobs for a specified Amplify app
and backend environment.


=head2 ListComponents

=over

=item AppId => Str

=item EnvironmentName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ListComponents>

Returns: a L<Paws::AmplifyUIBuilder::ListComponentsResponse> instance

Retrieves a list of components for a specified Amplify app and backend
environment.


=head2 ListForms

=over

=item AppId => Str

=item EnvironmentName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ListForms>

Returns: a L<Paws::AmplifyUIBuilder::ListFormsResponse> instance

Retrieves a list of forms for a specified Amplify app and backend
environment.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ListTagsForResource>

Returns: a L<Paws::AmplifyUIBuilder::ListTagsForResourceResponse> instance

Returns a list of tags for a specified Amazon Resource Name (ARN).


=head2 ListThemes

=over

=item AppId => Str

=item EnvironmentName => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::ListThemes>

Returns: a L<Paws::AmplifyUIBuilder::ListThemesResponse> instance

Retrieves a list of themes for a specified Amplify app and backend
environment.


=head2 PutMetadataFlag

=over

=item AppId => Str

=item Body => L<Paws::AmplifyUIBuilder::PutMetadataFlagBody>

=item EnvironmentName => Str

=item FeatureName => Str


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::PutMetadataFlag>

Returns: nothing

Stores the metadata information about a feature on a form.


=head2 RefreshToken

=over

=item Provider => Str

=item RefreshTokenBody => L<Paws::AmplifyUIBuilder::RefreshTokenRequestBody>


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::RefreshToken>

Returns: a L<Paws::AmplifyUIBuilder::RefreshTokenResponse> instance

This is for internal use.

Amplify uses this action to refresh a previously issued access token
that might have expired.


=head2 StartCodegenJob

=over

=item AppId => Str

=item CodegenJobToCreate => L<Paws::AmplifyUIBuilder::StartCodegenJobData>

=item EnvironmentName => Str

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::StartCodegenJob>

Returns: a L<Paws::AmplifyUIBuilder::StartCodegenJobResponse> instance

Starts a code generation job for a specified Amplify app and backend
environment.


=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => L<Paws::AmplifyUIBuilder::Tags>


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::TagResource>

Returns: a L<Paws::AmplifyUIBuilder::TagResourceResponse> instance

Tags the resource with a tag key and value.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::UntagResource>

Returns: a L<Paws::AmplifyUIBuilder::UntagResourceResponse> instance

Untags a resource with a specified Amazon Resource Name (ARN).


=head2 UpdateComponent

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str

=item UpdatedComponent => L<Paws::AmplifyUIBuilder::UpdateComponentData>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::UpdateComponent>

Returns: a L<Paws::AmplifyUIBuilder::UpdateComponentResponse> instance

Updates an existing component.


=head2 UpdateForm

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str

=item UpdatedForm => L<Paws::AmplifyUIBuilder::UpdateFormData>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::UpdateForm>

Returns: a L<Paws::AmplifyUIBuilder::UpdateFormResponse> instance

Updates an existing form.


=head2 UpdateTheme

=over

=item AppId => Str

=item EnvironmentName => Str

=item Id => Str

=item UpdatedTheme => L<Paws::AmplifyUIBuilder::UpdateThemeData>

=item [ClientToken => Str]


=back

Each argument is described in detail in: L<Paws::AmplifyUIBuilder::UpdateTheme>

Returns: a L<Paws::AmplifyUIBuilder::UpdateThemeResponse> instance

Updates an existing theme.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ExportAllComponents(sub { },AppId => Str, EnvironmentName => Str, [NextToken => Str])

=head2 ExportAllComponents(AppId => Str, EnvironmentName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ExportComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ExportAllForms(sub { },AppId => Str, EnvironmentName => Str, [NextToken => Str])

=head2 ExportAllForms(AppId => Str, EnvironmentName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ExportFormsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ExportAllThemes(sub { },AppId => Str, EnvironmentName => Str, [NextToken => Str])

=head2 ExportAllThemes(AppId => Str, EnvironmentName => Str, [NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ExportThemesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCodegenJobs(sub { },AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllCodegenJobs(AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ListCodegenJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllComponents(sub { },AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllComponents(AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ListComponentsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForms(sub { },AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllForms(AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ListFormsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllThemes(sub { },AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])

=head2 ListAllThemes(AppId => Str, EnvironmentName => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - entities, passing the object as the first parameter, and the string 'entities' as the second parameter 

If not, it will return a a L<Paws::AmplifyUIBuilder::ListThemesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

